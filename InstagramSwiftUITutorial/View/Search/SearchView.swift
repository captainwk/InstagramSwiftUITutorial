//
//  SearchView.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/06/23.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        ScrollView {
            // search bar
            SearchBar(text: $searchText)
                .padding()
            
            // grid view
            PostGridView()
        }
        
        
        
        
        
        // user list view
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
