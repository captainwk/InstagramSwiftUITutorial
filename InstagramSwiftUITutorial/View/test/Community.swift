//
//  Community.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/06/27.
//

import SwiftUI

struct Community: View {
    @State private var isShowing = true
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                LazyVStack() {
                    HStack(){
                        Text("이슈")
                            .padding(.leading, 8)
                        Spacer()
                        Text("자유게시판")
                        Spacer()
                        Text("우리끼리")
                        Spacer()
                        Text("구인구직")
                            .padding(.trailing, 8)
                    }
                    .padding(.bottom, 16)
                    
                    LazyVStack {
                        ForEach(0 ..< 3) { _ in
                            CommunityCell()
                        }
                    }
                }
            }
            HStack{
                Spacer()
                NavigationLink(
                    destination: CommunityAdd(title: "", content: ""),
                    label: {
                        Image(systemName: "plus")
                            .font(.system(size: 50))
                            .foregroundColor(.black)
                            .padding()
                    })
            }
        }
    }
}

struct Community_Previews: PreviewProvider {
    static var previews: some View {
        Community()
    }
}
