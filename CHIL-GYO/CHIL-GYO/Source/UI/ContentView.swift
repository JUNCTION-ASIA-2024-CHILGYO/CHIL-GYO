//
//  ContentView.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/10/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        SearchView()
            .onAppear {
                SampleDataManager.shared.insertFoodSampleData(modelContext: modelContext)
            }
    }
}

#Preview {
    ContentView()
}
