//
//  FoodRecommend.swift
//  CHIL-GYO
//
//  Created by JIN LEE on 8/10/24.
//

import SwiftUI


struct FoodRecommend: View {
    
    var items: [String] = ["FoodImage1", "FoodImage2", "FoodImage3"]
    
    var body: some View {
        
        VStack(alignment:.leading){
            
            Text("Parenting Experts Recommend \n foods with folic acid and potassium!")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(items, id: \.self) { item in
                        CarouselView(image: item)
                    }
                }
                .padding()
            }
        }
    }
    
}
