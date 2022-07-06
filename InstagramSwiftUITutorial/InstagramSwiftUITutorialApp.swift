//
//  InstagramSwiftUITutorialApp.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/06/23.
//

import SwiftUI
import FirebaseCore

@main
struct InstagramSwiftUITutorialApp: App {
    
    class AppDelegate: NSObject, UIApplicationDelegate {
      func application(_ application: UIApplication,
                       didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()

        return true
      }
    }
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
            LoginView()
        }
    }
}
