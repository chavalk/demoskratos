//
//  RepresentativeBio.swift
//  demoskratos
//
//  Created by Jose Garcia on 10/14/23.
//

import SwiftUI

struct RepresentativeBio: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.colorScheme) var colorScheme
    let representative: Representative
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Text("General Info")
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                    }
                    .padding()
                    
                    HStack(spacing: 15) {
                        Image(systemName: "clock.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        Text("4 years in power")
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "dollarsign.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        Text("$174,000 per year salary")
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "birthday.cake.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("Age 51 (Born August 7, 1972)")
                            
                            Text("Born in Bethesda, Maryland")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "mappin.and.ellipse")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("Currently resides in Austin, Texas")
                            
                            Text("Raised in Lovettsville, Virginia")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("Represents 807,859 people (Estimate)")
                        }
                    }
                    .padding(.leading)
                    
                    Divider()
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Education")
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "graduationcap.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("Bachelor of Science in Commerce")
                            
                            Text("University of Virginia 1994")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "graduationcap.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("Master of Arts in Information Systems")
                            
                            Text("University of Virginia 1995")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "graduationcap.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("Juris Doctor")
                            
                            Text("University of Texas 2003")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    Divider()
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Professional Experience")
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "briefcase.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("Investment Banking Analyst")
                            
                            Text("NationsBank Capital Markets")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "briefcase.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("Staff Director & Senior Counsel")
                            
                            Text("Senator John Cornyn")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "briefcase.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("Special Assistant")
                            
                            Text("U.S. Attorney - Eastern District in Texas")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "briefcase.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("Chief of Staff")
                            
                            Text("Senator Ted Cruz")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "briefcase.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("First Assistant")
                            
                            Text("Attorney General of Texas")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "briefcase.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("United States Representative")
                            
                            Text("United States House of Representatives")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    Divider()
                }
            }
            .navigationTitle("Bio")
            .navigationBarTitleDisplayMode(.inline)
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
                    }
                }
            }
            
        }
    }
}

#Preview {
    RepresentativeBio(representative: Representative(age: 51, currentResidence: "Austin, Texas", dateOfBirth: "August 7, 1972", district: 21, districtPopulation: "807,859", educationFirst: "Bachelor of Science in Commerce", educationSecond: "Master of Arts in Information Systems", educationThird: "Juris Doctor", employerFifth: "Attorney General of Texas", employerFirst: "NationsBank Capital Markets", employerFourth: "Senator Ted Cruz", employerSecond: "Senator John Cornyn", employerSixth: "United States House of Representatives", employerThird: "U.S. Attorney - Eastern District in Texas", name: "Chip Roy", officeName: "United States House Representative", placeOfBirth: "Bethesda, Maryland", professionalExpFifth: "First Assistant", professionalExpFirst: "Investment Banking Analyst", professionalExpFourth: "Chief of Staff", professionalExpSecond: "Staff Director & Senior Counsel", professionalExpSixth: "United States Representative", professionalExpThird: "Special Assistant", profileImageUrl: "https://firebasestorage.googleapis.com/v0/b/demoskratos-1160e.appspot.com/o/us-house-tx-21.png?alt=media&token=562aa2d7-39c8-489a-8084-3072dddd0fcd", raisedIn: "LovettsVille, Virginia", salary: "174,000", state: "Texas", uid: "Qzqjtk1sa2IJcbwPQ1PG", universityFirst: "University of Virginia 1994", universitySecond: "University of Virginia 1995", universityThird: "University of Texas 2003", yearsInPower: 4))
}
