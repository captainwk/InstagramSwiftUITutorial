//
//  LoginView.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/07/03.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.purple, Color.blue]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                    .ignoresSafeArea()
                
                
                VStack {
                    Image("Instagram_logo")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .frame(width: 220, height: 100)
                        .foregroundColor(.white)
                    
                    //email field
                    
                    // password field
                    
                    // forgot password
                    
                    // sign in
                    
                    // go to sign up
                    
                    Spacer()
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
