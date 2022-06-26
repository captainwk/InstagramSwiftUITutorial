//
//  NotificationCell.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/06/27.
//

import SwiftUI

struct NotificationCell: View {
    @State private var showPostImage = true
    var body: some View {
        HStack {
            Image("Mackenzie")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            Text("Mackenzie").font(.system(size: 14,
                                        weight: .semibold)) +
            Text(" liked one of your posts.")
                .font(.system(size: 15))
            
            Spacer()
            
            if showPostImage {
                Image("Mackenzie")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipped()
            } else {
                Button(action: {}, label: {
                    Text("Follow")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .font(.system(size: 14, weight: .semibold))
                })
            }
        }
        .padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
