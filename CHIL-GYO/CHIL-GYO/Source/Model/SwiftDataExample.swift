//
//  SwiftDataExample.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/10/24.
//

import Foundation
import UIKit
import SwiftData

@Model
final class SwiftDataExample {
    @Attribute(.unique) var id: UUID
    var name: String
    var size: String
    var numericalImageData: Data?
    var clothImageData: Data?
    var subCategory: String
    var mainCategory: String
    var isPinned: Bool
    var date: Date
    
    init(name: String = "", size: String = "", numericalImageData: Data? = nil, clothImageData: Data? = nil, subCategory: String = "", mainCategory: String = "", isPinned: Bool = false) {
        self.id = UUID()
        self.name = name
        self.size = size
        self.numericalImageData = numericalImageData
        self.clothImageData = clothImageData
        self.subCategory = subCategory
        self.mainCategory = mainCategory
        self.isPinned = isPinned
        self.date = .now
    }
    
    var numericalUIImage: UIImage? {
        if let data = numericalImageData,
           let image = UIImage(data: data) {
            return image
        }
        return nil
    }
    
    var clothUIImage: UIImage? {
        if let data = clothImageData,
           let image = UIImage(data: data) {
            return image
        }
        return nil
    }
    
    
}
