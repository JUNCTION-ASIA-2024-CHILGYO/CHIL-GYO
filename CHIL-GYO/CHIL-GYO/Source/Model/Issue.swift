//
//  FoodIssue.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/11/24.
//

import Foundation
import SwiftData

@Model
final class Issue {
    @Attribute(.unique) var name: String
    var script: String
    
    var foods: [Food] = []
    
    init(name: String, script: String) {
        self.name = name
        self.script = script
    }
}
