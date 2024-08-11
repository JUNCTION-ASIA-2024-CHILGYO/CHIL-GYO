//
//  UserSampleData.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/11/24.
//

import SwiftUI
import SwiftData

extension User {
    static let screamingFox = User(userName: "Screaming Fox",
                                   userProfileImageData: UIImage(resource: .profile1).jpegData(compressionQuality: 1),
                                   babyName: "dongdong",
                                   pregnancyDate: Date(timeIntervalSinceNow: -10000))
    static let dancingRabbit = User(userName: "Dancing Rabbit",
                                   userProfileImageData: UIImage(resource: .profile2).jpegData(compressionQuality: 1),
                                   babyName: "star",
                                   pregnancyDate: Date(timeIntervalSinceNow: -10000))
}
