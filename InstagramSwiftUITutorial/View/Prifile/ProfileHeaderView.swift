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
                    UserStateView()
                    UserStateView()
                    UserStateView()
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
                Button(action: {}, label: {
                    Text("Edit Profile")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 3)
                                    .stroke(Color.gray, lineWidth: 1.0))
                })
                    .padding(.top)
                Spacer()
            }
        }
    }
}

struct UserStateView: View {
    var body: some View {
        VStack {
            Text("2")
                .font(.system(size: 15, weight: .semibold))
            Text("Followers")
                .font(.system(size: 15))
        }
        .frame(width: 80, alignment: .center)
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
