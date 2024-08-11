//
//  FoodCard.swift
//  CHIL-GYO
//
//  Created by JIN LEE on 8/11/24.
//

import SwiftUI

struct FoodCard: View {
    let imageName: String
      
      var body: some View {
          VStack {
              Image(imageName)
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .padding(4)

//              Text(imageName)
//                  .font(.caption)
//                  .multilineTextAlignment(.center)
          }
          .frame(height: 130)
      }
  }
