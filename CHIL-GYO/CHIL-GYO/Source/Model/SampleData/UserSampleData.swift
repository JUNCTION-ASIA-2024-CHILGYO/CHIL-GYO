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
                                   userProfileImageData: UIImage(resource: .halibuSashimi).jpegData(compressionQuality: 1),
                                   babyName: "dongdong",
                                   pregnancyDate: Date(timeIntervalSinceNow: -10000))
}
