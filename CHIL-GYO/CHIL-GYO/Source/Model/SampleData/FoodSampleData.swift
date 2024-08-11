//
//  FoodSampleData.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/11/24.
//

import SwiftData
import SwiftUI

extension Food {
    static let tunaSashimi = Food(foodImageData: UIImage(resource: ._1).jpegData(compressionQuality: 1),
                                     name: "Tuna sashimi",
                                     notice: "Max 0.6 ppm mercury per 100g per week.",
                                     issues: [.foodPoisoning, .fetalNerves])
    static let salmonSashimi = Food(foodImageData: UIImage(resource: ._2).jpegData(compressionQuality: 1),
                                  name: "Salmon sashimi",
                                  notice: "Max 0.6 ppm mercury per 100g per week.",
                                  issues: [.foodPoisoning, .fetalNerves])
    static let okdom = Food(foodImageData: UIImage(resource: ._3).jpegData(compressionQuality: 1),
                                  name: "Okdom",
                                  notice: "Max 0.6 ppm mercury per 100g per week.",
                                  issues: [.fetalNerves])
    static let shark = Food(foodImageData: UIImage(resource: ._4).jpegData(compressionQuality: 1),
                                  name: "Shark",
                                  notice: "Max 0.6 ppm mercury per 100g per week.",
                                  issues: [.fetalNerves])
    static let tuna = Food(foodImageData: UIImage(resource: ._5).jpegData(compressionQuality: 1),
                                  name: "Tuna",
                                  notice: "Max 0.6 ppm mercury per 100g per week.",
                                  issues: [.fetalNerves])
    static let swordfish = Food(foodImageData: UIImage(resource: ._6).jpegData(compressionQuality: 1),
                                  name: "Swordfish",
                                  notice: "Max 0.6 ppm mercury per 100g per week.",
                                  issues: [.fetalNerves])
    static let flatSashimi = Food(foodImageData: UIImage(resource: ._7).jpegData(compressionQuality: 1),
                                  name: "Flat sashimi",
                                  notice: "Please be especially careful during the summer!",
                                  issues: [.foodPoisoning])
    static let yukhoe = Food(foodImageData: UIImage(resource: ._8).jpegData(compressionQuality: 1),
                                  name: "Yukhoe",
                                  notice: "Please be especially careful during the summer!",
                                  issues: [.foodPoisoning])
    static let aRawOyster = Food(foodImageData: UIImage(resource: ._9).jpegData(compressionQuality: 1),
                                  name: "A raw oyster",
                                  notice: "Please be especially careful during the summer!",
                                  issues: [.foodPoisoning])
    static let aRawClam = Food(foodImageData: UIImage(resource: ._10).jpegData(compressionQuality: 1),
                                  name: "A raw clam",
                                  notice: "Please be especially careful during the summer!",
                                  issues: [.foodPoisoning])
    static let coffee = Food(foodImageData: UIImage(resource: ._11).jpegData(compressionQuality: 1),
                                  name: "Coffee",
                                  notice: "Caffeine is limited to 300mg per day",
                                  issues: [.complicationsOfChildbirth])
    static let tea = Food(foodImageData: UIImage(resource: ._12).jpegData(compressionQuality: 1),
                                  name: "Tea",
                                  notice: "Caffeine is limited to 300mg per day",
                                  issues: [.complicationsOfChildbirth])
    static let soda = Food(foodImageData: UIImage(resource: ._13).jpegData(compressionQuality: 1),
                                  name: "Soda",
                                  notice: "Caffeine is limited to 300mg per day",
                           issues: [.complicationsOfChildbirth, .gestationalDiabetes])
    static let chocolate = Food(foodImageData: UIImage(resource: ._14).jpegData(compressionQuality: 1),
                                  name: "Chocolate",
                                  notice: "Caffeine is limited to 300mg per day",
                                issues: [.complicationsOfChildbirth, .gestationalDiabetes])
    static let pizza = Food(foodImageData: UIImage(resource: ._15).jpegData(compressionQuality: 1),
                                  name: "Pizza",
                                  notice: "The possibility of atopic dermatitis cannot be ruled out.",
                                issues: [.atopy])
    static let hamburger = Food(foodImageData: UIImage(resource: ._16).jpegData(compressionQuality: 1),
                                  name: "Hamburger",
                                  notice: "The possibility of atopic dermatitis cannot be ruled out.",
                                issues: [.atopy])
    static let frenchFries = Food(foodImageData: UIImage(resource: ._16).jpegData(compressionQuality: 1),
                                  name: "French fries",
                                  notice: "The possibility of atopic dermatitis cannot be ruled out.",
                                issues: [.atopy])
}
