//
//  ContentView.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/10/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @AppStorage("firstLaunch") var firstLaunch: Bool = true
    
    var body: some View {
        Home()
            .onAppear {
                if firstLaunch {
                    SampleDataManager.shared.insertFoodSampleData(modelContext: modelContext)
                    SampleDataManager.shared.insertUserSampleData(modelContext: modelContext)
                    SampleDataManager.shared.insertCommentSampleData(modelContext: modelContext)
                    firstLaunch = false
                }
            }
    }
}

#Preview {
    ContentView()
}
