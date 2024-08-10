//
//  SampleDataManager.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/11/24.
//

import SwiftUI
import SwiftData

final class SampleDataManager {
    private init() {}
    static let shared = SampleDataManager()
    
    func insertUserSampleData(modelContext: ModelContext) {
        
    }
    
    func insertIssueSampleData(modelContext: ModelContext) {
        modelContext.insert(Issue.virus)
        modelContext.insert(Issue.fetalNerves)
        modelContext.insert(Issue.mercury)
        modelContext.insert(Issue.foodPoisoning)
    }
    
    func insertFoodSampleData(modelContext: ModelContext) {
        insertIssueSampleData(modelContext: modelContext)
        modelContext.insert(Food.halibutSashimi)
        modelContext.insert(Food.tunaSashimi)
    }
    
    func insertCommentSampleData(modelContext: ModelContext) {
       
    }
    
    func reloadSampleData(modelContext: ModelContext) {
        do {
            try modelContext.delete(model: Food.self)
            try modelContext.delete(model: Issue.self)
            try modelContext.delete(model: User.self)
            insertUserSampleData(modelContext: modelContext)
            insertFoodSampleData(modelContext: modelContext)
            insertCommentSampleData(modelContext: modelContext)
        } catch {
            fatalError(error.localizedDescription)
        }
    }
}
