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
    RepresentativeBio()
}
