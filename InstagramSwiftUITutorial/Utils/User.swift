//
//  User.swift
//  InstagramSwiftUITutorial
//
//  Created by 신주환 on 2022/07/11.
//

import FirebaseFirestoreSwift

struct User: Codable {
    let username: String
    let email: String
    let profileImageUrl: String
    let fullname: String

    @DocumentID var id: String?
}
