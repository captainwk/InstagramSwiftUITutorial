//
//  UploadPostView.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/06/23.
//

import SwiftUI

struct UploadPostView: View {
    @State private var selectedImage: UIImage?
    @State var postImage: Image?
    @State var captionText = ""
    
    var body: some View {
        VStack {
            if postImage == nil {
                Button(action: {}, label: {
                    Image(systemName: "plus.app")
                        .resizable()
                        .renderingMode(.template) // 이 옵션을 사용하면 원래 색깔을 무시하고 내가 원하는 색깔로 이미지에 덧칠할 수 있음
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .padding(.top, 56)
                        .foregroundColor(.black)
                })
            } else {
                HStack(alignment: .top) {
                    Image("Mackenzie")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 96)
                        .clipped()
                    
                    TextField("Enter your caption..", text:
                                $captionText)
                }
                Button(action: {}, label: {
                    Text("Share")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 360, height: 50)
                        .background(.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }).padding()
            }
            Spacer()
        }.padding()
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
