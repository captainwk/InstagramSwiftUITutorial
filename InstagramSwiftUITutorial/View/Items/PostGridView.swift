//
//  PostGridView.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/06/26.
//

import SwiftUI

struct PostGridView: View {
    private let items = [GridItem(), GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width / 3
    
    var body: some View {
        LazyVGrid(columns: items,spacing: 2, content: {
            ForEach(0 ..< 10) { _ in
                Image("Mackenzie")
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: width)
                    .clipped()
            }
        })
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
    }
}
