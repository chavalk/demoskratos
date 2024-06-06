//
//  RepresentativeProfile.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/26/23.
//

import SwiftUI

struct RepresentativeProfile: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.colorScheme) var colorScheme
    @ObservedObject var viewModel = RepProfileViewModel()
    private let representative: Representative
    
    init(representative: Representative) {
        self.representative = representative
    }
    
    var body: some View {
        ScrollView {
            MapView()
                .frame(height: 400)
            
            CircleImage(profileImageUrl: representative.profileImageUrl)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            Text(representative.name)
                .font(.title)
                .bold()
            
            Text(representative.officeName)
            
            Text("District \(representative.district) - \(representative.state)")
                .foregroundColor(.secondary)
            
            NavigationLink {
                RepresentativeBio(representative: representative)
            } label: {
                Text("See full bio >")
                    .foregroundStyle(colorScheme == .dark ? .white : .black)
            }
            
            Divider()
                .padding()
            
            HStack {
                Text("Recent Votes")
                    .font(.title2)
                    .bold()
                
                Spacer()
            }
            .padding(.leading)
            
            LazyVStack {
                if viewModel.isFetching {
                    ProgressView()
                        .padding(.top, 30)
                } else {
                    if viewModel.votes.isEmpty {
                        // No votes found on Firestore
                        Text("No Votes Found")
                            .font(.caption)
                            .foregroundStyle(.gray)
                            .padding(.top, 30)
                    } else {
                        ForEach(viewModel.votes) { vote in
                            RecentVotesRow(vote: vote)
                                .onAppear {
                                    // When last activity appears, fetching new activity (If there)
                                    if vote.id == viewModel.votes.last?.id && viewModel.paginationDoc != nil {
                                        Task { await viewModel.fetchVotes() }
                                    }
                                }
                        }
                    }
                }
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.title)
                        .imageScale(.small)
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                        .background(
                            Circle()
                                .fill(Color(UIColor.systemBackground))
                                .frame(width:40, height: 40)
                        )
                }
            }
        }
        .refreshable {
            // Pull to refresh
            viewModel.isFetching = true
            viewModel.votes = []
            // Resetting pagination doc
            viewModel.paginationDoc = nil
            await viewModel.fetchVotes()
        }
        .task {
            // Fetching for one time
            guard viewModel.votes.isEmpty else { return }
            await viewModel.fetchVotes()
        }
    }
}

struct RepresentativeProfile_Previews: PreviewProvider {
    static var previews: some View {
        RepresentativeProfile(representative: Representative(age: 51, currentResidence: "Austin, Texas", dateOfBirth: "August 7, 1972", district: 21, districtPopulation: "807,859", educationFirst: "Bachelor of Science in Commerce", educationSecond: "Master of Arts in Information Systems", educationThird: "Juris Doctor", employerFifth: "Attorney General of Texas", employerFirst: "NationsBank Capital Markets", employerFourth: "Senator Ted Cruz", employerSecond: "Senator John Cornyn", employerSixth: "United States House of Representatives", employerThird: "U.S. Attorney - Eastern District in Texas", id: "Qzqjtk1sa2IJcbwPQ1PG", name: "Chip Roy", officeName: "United States House Representative", placeOfBirth: "Bethesda, Maryland", professionalExpFifth: "First Assistant", professionalExpFirst: "Investment Banking Analyst", professionalExpFourth: "Chief of Staff", professionalExpSecond: "Staff Director & Senior Counsel", professionalExpSixth: "United States Representative", professionalExpThird: "Special Assistant", profileImageUrl: "https://firebasestorage.googleapis.com/v0/b/demoskratos-1160e.appspot.com/o/us-house-tx-21.png?alt=media&token=562aa2d7-39c8-489a-8084-3072dddd0fcd", raisedIn: "Lovettsville, Virginia", salary: "174,000", state: "Texas", universityFirst: "University of Virginia 1994", universitySecond: "University of Virginia 1995", universityThird: "University of Texas 2003", yearsInPower: 4))
    }
}
