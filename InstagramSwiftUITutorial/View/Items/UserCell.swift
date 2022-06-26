//
//  UserCell.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/06/26.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            // image
            Image("yezi")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            // VStack -> username, fullname
            VStack(alignment: .leading) {
                Text("yezi")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("leader of itzi")
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
