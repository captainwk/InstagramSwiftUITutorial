//
//  Extensions.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/06/26.
//

import UIKit

extension UIApplication {
    func endEditin() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
