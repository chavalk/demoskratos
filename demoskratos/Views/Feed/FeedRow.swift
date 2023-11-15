//
//  PostCell.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/12/23.
//

import SwiftUI
import Firebase

struct FeedRow: View {
    @ObservedObject var repProfileViewModel = RepProfileViewModel()
//    let vote: Vote
    let activity : Activity
    
    var body: some View {
//        VStack {
//            HStack(alignment: .top) {
//                NavigationLink {
//                    if let representative = repProfileViewModel.representative {
//                        RepresentativeProfile(representative: representative)
//                    }
//                    
//                } label: {
//                    AsyncImage(url: URL(string: repProfileViewModel.representative?.profileImageUrl ?? "")) { image in
//                        image
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .clipShape(Circle())
//                            .frame(width: 56, height: 56)
//                    } placeholder: {
//                        Circle()
//                            .frame(width: 56, height: 56)
//                            .foregroundColor(Color(uiColor: .lightGray))
//                    }
//                }
//                
//                VStack(alignment: .leading, spacing: 8) {
//                    Text(repProfileViewModel.representative?.name ?? "")
//                        .font(.headline)
//                    
//                    Text(vote.billTitle)
//                    
//                    FeedRowButtons()
//                }
//                
//                Spacer()
//            }
//            
//            Divider()
//        }
//        .padding(.horizontal)
        
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: "clock")
                
                Text(activity.floorTime)
            }
            .padding(.top)
            
            Text(activity.floorActivity)
                .padding(.bottom)
            
            Divider()
        }
        .padding(.horizontal)
    }
}

//struct FeedRow_Previews: PreviewProvider {
//    static var previews: some View {
//        FeedRow(vote: Vote(id: "123456", name: "Chip Roy", profileImageUrl: "https://firebasestorage.googleapis.com/v0/b/demoskratos-1160e.appspot.com/o/us-house-tx-21.png?alt=media&token=562aa2d7-39c8-489a-8084-3072dddd0fcd", text: "Your United States House Representative just voted Yes on passage of House Resolution No. 288, the Separation of Powers Restoration Act of 2023: To amend title 5, United States Code, to clarify the nature of judicial review of agency interpretations of statutory and regulatory provisions.", timestamp: Timestamp(date: Date()), uid: "1234567"))
//    }
//}
