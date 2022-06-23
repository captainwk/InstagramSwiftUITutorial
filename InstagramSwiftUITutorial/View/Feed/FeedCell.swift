//
//  FeedCell.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/06/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            // user info
            HStack {
                Image("Mackenzie")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("joker")
                    .font(.system(size: 14, weight: .semibold))
            }
            
            // post image
            Image("Mackenzie")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440) // 이미지 높이가 440보다 작으면 440의 공간을 차지
                .clipped()
            
            // action buttons
            HStack(spacing:8) {
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                        .padding(4)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                        .padding(4)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                        .padding(4)
                })
            }.foregroundColor(.black)
            
            // caption
            
            HStack {
                Text("batman").font(.system(size: 14,
                                            weight: .semibold)) +
                Text(" All men have limits. They learn what they are and learn not to exceed them. I ignore mine")
                    .font(.system(size: 16))
            }
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.top)
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
