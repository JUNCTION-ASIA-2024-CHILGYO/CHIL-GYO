//
//  CarouselView.swift
//  CHIL-GYO
//
//  Created by JIN LEE on 8/11/24.
//

import SwiftUI

struct CarouselView: View {
    let image: String
     
     var body: some View {
         VStack {
             Image(image)
         }
         .frame(width: 148, height: 180)
         .cornerRadius(16)
     }
}

