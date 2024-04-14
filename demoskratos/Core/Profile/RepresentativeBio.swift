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
                        
                        Text("\(representative.yearsInPower) years in power")
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "dollarsign.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        Text("$\(representative.salary) per year salary")
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "birthday.cake.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("Age \(representative.age) (Born \(representative.dateOfBirth))")
                            
                            Text("Born in \(representative.placeOfBirth)")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "mappin.and.ellipse")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("Currently resides in \(representative.currentResidence)")
                            
                            Text("Raised in \(representative.raisedIn)")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("Represents \(representative.districtPopulation) people (Estimate)")
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
                            Text("\(representative.educationFirst)")
                            
                            Text("\(representative.universityFirst)")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "graduationcap.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("\(representative.educationSecond)")
                            
                            Text("\(representative.universitySecond)")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "graduationcap.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("\(representative.educationThird)")
                            
                            Text("\(representative.universityThird)")
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
                            Text("\(representative.professionalExpFirst)")
                            
                            Text("\(representative.employerFirst)")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "briefcase.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("\(representative.professionalExpSecond)")
                            
                            Text("\(representative.employerSecond)")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "briefcase.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("\(representative.professionalExpThird)")
                            
                            Text("\(representative.employerThird)")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "briefcase.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("\(representative.professionalExpFourth)")
                            
                            Text("\(representative.employerFourth)")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "briefcase.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("\(representative.professionalExpFifth)")
                            
                            Text("\(representative.employerFifth)")
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.leading)
                    
                    HStack(spacing: 15) {
                        Image(systemName: "briefcase.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text("\(representative.professionalExpSixth)")
                            
                            Text("\(representative.employerSixth)")
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
    RepresentativeBio(representative: Representative(age: 51, currentResidence: "Austin, Texas", dateOfBirth: "August 7, 1972", district: 21, districtPopulation: "807,859", educationFirst: "Bachelor of Science in Commerce", educationSecond: "Master of Arts in Information Systems", educationThird: "Juris Doctor", employerFifth: "Attorney General of Texas", employerFirst: "NationsBank Capital Markets", employerFourth: "Senator Ted Cruz", employerSecond: "Senator John Cornyn", employerSixth: "United States House of Representatives", employerThird: "U.S. Attorney - Eastern District in Texas", id: "Qzqjtk1sa2IJcbwPQ1PG", name: "United States House Representative", officeName: "Bethesda, Maryland", placeOfBirth: "First Assistant", professionalExpFifth: "Investment Banking Analyst", professionalExpFirst: "Chief of Staff", professionalExpFourth: "Staff Director & Senior Counsel", professionalExpSecond: "United States Representative", professionalExpSixth: "Special Assistant", professionalExpThird: "https://firebasestorage.googleapis.com/v0/b/demoskratos-1160e.appspot.com/o/us-house-tx-21.png?alt=media&token=562aa2d7-39c8-489a-8084-3072dddd0fcd", profileImageUrl: "LovettsVille, Virginia", raisedIn: "174,000", salary: "Texas", state: "Qzqjtk1sa2IJcbwPQ1PG", universityFirst: "University of Virginia 1994", universitySecond: "University of Virginia 1995", universityThird: "University of Texas 2003", yearsInPower: 4))
}
