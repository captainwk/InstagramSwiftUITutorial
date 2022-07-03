//
//  ApiTest.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/07/03.
//

import Foundation


//  http://krafte.net/app_php/Test.php
//  http://krafte.net/app_php/Test.php?no=1&test=a


// Get, POST, PUT, DELETE, etc.

func makePostRequest() {
    guard let url = URL(string: "http://krafte.net/app_php/Test.php") else {
        return
    }
    
    var request = URLRequest(url: url)
    // method, body, headers
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    let body: [String: AnyHashable] = [
        "no": "1",
        "test": "a",
    ]
    request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
    // Make the request
    
    let task = URLSession.shared.dataTask(with: request) {data, _, error in
        guard let data = data, error == nil else {
            return
        }
        
        do {
            let response = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            print("SUCCESS: \(response)")
            print(response)
        }
        catch {
            print(error)
        }
    }
    task.resume()
}


