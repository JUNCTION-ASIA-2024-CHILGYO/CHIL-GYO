//
//  Comment.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/10/24.
//

import UIKit
import SwiftData

@Model
final class Comment {
    @Attribute(.unique) var id: UUID
    var comment: String
    var timestamp: Date
    var pregnancyFeriod: Int
    
    @Relationship(inverse: \Food.comments) var food: Food?
    @Relationship(inverse: \User.comments) var user: User?
    
    init(comment: String, pregnancyFeriod: Int) {
        self.id = UUID()
        self.comment = comment
        self.timestamp = Date()
        self.pregnancyFeriod = pregnancyFeriod
    }
}
