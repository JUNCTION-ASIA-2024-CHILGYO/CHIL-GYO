//
//  FoodSampleData.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/11/24.
//

import SwiftData
import SwiftUI

extension Food {
    static let halibutSashimi = Food(foodImageData: UIImage(resource: .halibuSashimi).jpegData(compressionQuality: 1),
                                     name: "Halibut sashimi",
                                     notice: "광어회 마싯따",
                                     issues: [.foodPoisoning, .virus])
    static let tunaSashimi = Food(foodImageData: UIImage(resource: .tunaSashimi).jpegData(compressionQuality: 1),
                                  name: "Tuna sashimi",
                                  notice: "Max 0.6 ppm mercury per 100g per week",
                                  issues: [.foodPoisoning, .fetalNerves])
}
