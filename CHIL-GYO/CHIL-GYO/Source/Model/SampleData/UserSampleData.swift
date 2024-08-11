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
                                   babyName: "Hoho",
                                   pregnancyDate: Date(timeIntervalSinceNow: -2500000))
    static let dancingRabbit = User(userName: "Dancing Rabbit",
                                   userProfileImageData: UIImage(resource: .profile2).jpegData(compressionQuality: 1),
                                   babyName: "Lemony",
                                   pregnancyDate: Date(timeIntervalSinceNow: -2000000))
    
    static let sleepingNagi = User(userName: "Sleeping Nagi",
                                   userProfileImageData: UIImage(resource: .profile1).jpegData(compressionQuality: 1),
                                   babyName: "Flash",
                                   pregnancyDate: Date(timeIntervalSinceNow: -3000000))
    
    static let drivingLemony = User(userName: "Driving Lemony",
                                   userProfileImageData: UIImage(resource: .profile2).jpegData(compressionQuality: 1),
                                   babyName: "star",
                                   pregnancyDate: Date(timeIntervalSinceNow: -3000000))
}
