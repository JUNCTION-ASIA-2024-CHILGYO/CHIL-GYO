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
        modelContext.insert(User.screamingFox)
        modelContext.insert(User.dancingRabbit)
    }
    
    func insertIssueSampleData(modelContext: ModelContext) {
        modelContext.insert(Issue.atopy)
        modelContext.insert(Issue.fetalNerves)
        modelContext.insert(Issue.gestationalDiabetes)
        modelContext.insert(Issue.foodPoisoning)
    }
    
    func insertFoodSampleData(modelContext: ModelContext) {
        insertIssueSampleData(modelContext: modelContext)
        modelContext.insert(Food.tunaSashimi)
        modelContext.insert(Food.flatSashimi)
        modelContext.insert(Food.soda)
        modelContext.insert(Food.aRawClam)
        modelContext.insert(Food.aRawOyster)
        modelContext.insert(Food.chocolate)
        modelContext.insert(Food.coffee)
        modelContext.insert(Food.frenchFries)
        modelContext.insert(Food.hamburger)
        modelContext.insert(Food.okdom)
        modelContext.insert(Food.pizza)
        modelContext.insert(Food.salmonSashimi)
        modelContext.insert(Food.shark)
        modelContext.insert(Food.swordfish)
        modelContext.insert(Food.tea)
        modelContext.insert(Food.tuna)
        modelContext.insert(Food.yukhoe)
    }
    
    func insertCommentSampleData(modelContext: ModelContext) {
        modelContext.insert(Comment.dancingRabbit)
        modelContext.insert(Comment.screamingFox)
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
