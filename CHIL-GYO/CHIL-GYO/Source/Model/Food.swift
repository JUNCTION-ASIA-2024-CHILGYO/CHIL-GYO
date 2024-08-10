//
//  Food.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/10/24.
//

import SwiftData
import SwiftUI

@Model
final class Food {
    @Attribute(.unique) var id: UUID
    @Attribute(.externalStorage) var foodImageData: Data
    var name: String
    var notice: String
    var issues: [String]
    
    @Relationship(deleteRule: .cascade)
    var comments: [Comment] = []
    
    init(foodImageData: Data, name: String, notice: String, issues: [String]) {
        self.id = UUID()
        self.foodImageData = foodImageData
        self.name = name
        self.notice = notice
        self.issues = issues
    }
}

extension Food {
    var foodImage: Image {
        guard let image = UIImage(data: foodImageData) else {
            return Image(systemName: "X")
        }
        return Image(uiImage: image)
    }
}
