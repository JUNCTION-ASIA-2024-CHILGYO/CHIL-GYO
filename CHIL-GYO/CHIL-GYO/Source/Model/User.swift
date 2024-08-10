//
//  User.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/10/24.
//

import UIKit
import SwiftData

@Model
final class User {
    @Attribute(.unique) var id: UUID
    var userName: String
    @Attribute(.externalStorage) var userProfileImageData: Data?
    var babyName: String
    var pregnancyDate: Date
    
    @Relationship(deleteRule: .cascade)
    var comments: [Comment] = []
    
    init(userName: String, userProfileImageData: Data?, babyName: String, pregnancyDate: Date) {
        self.id = UUID()
        self.userName = userName
        self.userProfileImageData = userProfileImageData
        self.babyName = babyName
        self.pregnancyDate = pregnancyDate
    }
}

extension User {
    var profileImage: Image {
        guard let image = UIImage(data: userProfileImageData) else {
            return Image(systemName: "X")
        }
        return Image(uiImage: image)
    }
    
    var pregnancyFeriod: Int {
        let weeksDifference = Calendar.current.dateComponents([.weekOfYear], from: pregnancyDate, to: Date()).weekOfYear
        if let weeks = weeksDifference {
            return weeks
        } else {
            return 9999
        }
    }
}
