//
//  communityCell.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/06/27.
//

import SwiftUI

struct CommunityCell: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("화나요")
                    .font(.system(size: 14))
                    .padding(.bottom, -2)
                    .frame(width: 50, height: 20)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(8)
                Text("오늘 매니저하고 싸웠어요")
                    .padding(.bottom, -2)
                Text("오늘 몸이 안좋았지만 다른 사람들한테 피해 주지 않으려고 열심히 일 했는데 매니저가 그런식으로 할 거면 때려치우라고 윽박 질렀어요...")
                    .foregroundColor(Color.black.opacity(0.7))
                    .padding(.bottom, -2)
                Text("빵순이")
                    .font(.system(size: 14))
                    .foregroundColor(Color.black.opacity(0.5))
                Divider()
            }
            .padding([.leading, .trailing], 8)
            
            HStack {
                Text("5일 전")
                    .font(.system(size: 14))
                Spacer()
                Image(systemName: "eye")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                Text("350")
                    .font(.system(size: 14))
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                Text("100")
                    .font(.system(size: 14))
                Image(systemName: "text.bubble")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                Text("75")
                    .font(.system(size: 14))
            }
            .padding([.leading, .trailing], 8)
            ExDivider()
        }
        
    }
}

struct CommunityCell_Previews: PreviewProvider {
    static var previews: some View {
        CommunityCell()
    }
}

struct ExDivider: View {
    var color: Color = .black.opacity(0.1)
    var width: CGFloat = 4
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: width)
            .edgesIgnoringSafeArea(.horizontal)
    }
}
