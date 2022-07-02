//
//  ProfileHeaderView.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/07/02.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Image("Mackenzie")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
                
                Spacer()
                HStack(spacing: 16) {
                    UserStateView(value: 1, title: "Post")
                    UserStateView(value: 2, title: "Followers")
                    UserStateView(value: 3, title: "Following")
                    Spacer()
                }
            }
            
            Text("Bruce Wayne")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            
            Text("Gothan's Dark Knight || Billionaire")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top, 1)
            
            HStack {
                Spacer()
                
                ProfileActionButtonView()
                    
                Spacer()
            }.padding(.top)
        }
    }
}



struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
