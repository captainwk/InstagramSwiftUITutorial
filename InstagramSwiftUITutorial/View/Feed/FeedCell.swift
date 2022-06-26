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
            .padding([.leading, .bottom], 8)
            
            // post image
            Image("Mackenzie")
                .resizable()
                .scaledToFill()
                // 이미지 넓이가 화면 스크린을 넘지 않도록, 이미지 높이가 440보다 작으면 440의 공간을 차지
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 440)
                .clipped()
            
                
            
            // action buttons
            HStack(spacing: 16) {
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .padding(4)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .padding(4)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .padding(4)
                })
            }
            .padding(.leading, 4)
            .foregroundColor(.black)
            
            // caption
            
            Text("3 likes")
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 2)
            
            HStack {
                Text("batman").font(.system(size: 14,
                                            weight: .semibold)) +
                Text(" All men have limits. They learn what they are and learn not to exceed them. I ignore mine")
                    .font(.system(size: 15))
            }.padding(.horizontal, 8)
            
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, -2)
                
            

                
        }
    }
    
    struct FeedCell_Previews: PreviewProvider {
        static var previews: some View {
            FeedCell()
        }
    }
}
