//
//  RepresentativeCell.swift
//  demoskratos
//
//  Created by Jose Garcia on 10/22/23.
//

import SwiftUI

struct RepresentativeCell: View {
    let representative: Representative
    
    var body: some View {
        HStack {
            Image("us-house-tx-21")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 56, height: 56)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(representative.name)
                    .font(.headline)
                
                Text("\(representative.officeName)")
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    RepresentativeCell(representative: Representative(age: 51, currentResidence: "Austin, Texas", dateOfBirth: "August 7, 1972", district: 21, districtPopulation: "807,859", educationFirst: "Bachelor of Science in Commerce", educationSecond: "Master of Arts in Information Systems", educationThird: "Juris Doctor", employerFifth: "Attorney General of Texas", employerFirst: "NationsBank Capital Markets", employerFourth: "Senator Ted Cruz", employerSecond: "Senator John Cornyn", employerSixth: "United States House of Representatives", employerThird: "U.S. Attorney - Eastern District in Texas", id: "Qzqjtk1sa2IJcbwPQ1PG", name: "Chip Roy", officeName: "United States House Representative", placeOfBirth: "Bethesda, Maryland", professionalExpFifth: "First Assistant", professionalExpFirst: "Investment Banking Analyst", professionalExpFourth: "Chief of Staff", professionalExpSecond: "Staff Director & Senior Counsel", professionalExpSixth: "United States Representative", professionalExpThird: "Special Assistant", profileImageUrl: "https://firebasestorage.googleapis.com/v0/b/demoskratos-1160e.appspot.com/o/us-house-tx-21.png?alt=media&token=562aa2d7-39c8-489a-8084-3072dddd0fcd", raisedIn: "Lovettsville, Virginia", salary: "174,000", state: "Texas", universityFirst: "University of Virginia 1994", universitySecond: "University of Virginia 1995", universityThird: "University of Texas 2003", yearsInPower: 4))
}
