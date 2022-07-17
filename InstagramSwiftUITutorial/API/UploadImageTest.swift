//
//  UploadImageTest.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/07/17.
//

import Foundation
import UIKit

func postImageTest(image: UIImage) async throws -> String? {
    let paramName = "uploaded_file"
    let fileName = "testImage.jpeg"
    
    guard let url = URL(string: "http://127.0.0.1:8000/instagram/feed/upload/") else {
        return "URL에러"
    }
    
    let boundary = UUID().uuidString
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    
    request.setValue("multipart/form-datal boundary=\(boundary)", forHTTPHeaderField: "content=Type")

    var bodyData = Data()
    
    bodyData.append("\r\n--\(boundary)\r\n".data(using: .utf8)!)
    
    bodyData.append("Content-Disposition: form-data; name\"\(paramName)\"\(fileName)\"\r\n".data(using: .utf8)!)
    
    bodyData.append("Content-Type: image/jpeg\r\n\r\n".data(using: .utf8)!)
    
    bodyData.append(image.jpegData(compressionQuality: 0.5)!)
    
    bodyData.append("\r\n--\(boundary)--\r\n".data(using: .utf8)!)
    
    request.httpBody = bodyData
    
    let (data, responseHTTP) = try await URLSession.shared.data(for: request)
    guard (responseHTTP as? HTTPURLResponse)?.statusCode == 200 else {
        return "response에러"
    }
    let response = String(data: data, encoding: .utf8)
    return response
}
