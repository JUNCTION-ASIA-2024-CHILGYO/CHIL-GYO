//
//  CHIL_GYOApp.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/10/24.
//

import SwiftUI
import SwiftData

@main
struct CHIL_GYOApp: App {
    
    var body: some Scene {
        WindowGroup {
            //ContentView()
            MyPageView()
        }
        .modelContainer(for: [Food.self, User.self, Issue.self, Comment.self])
    }
}
