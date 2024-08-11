//
//  CarouselView.swift
//  CHIL-GYO
//
//  Created by JIN LEE on 8/11/24.
//

import SwiftUI

struct CarouselView: View {
    let text: String
     
     var body: some View {
         VStack {
             Text(text)
                 .font(.largeTitle)
                 .foregroundColor(.white)
         }
         .frame(width: 148, height: 180)
         .background(Color.chilBlue)
         .cornerRadius(16)
     }
}

