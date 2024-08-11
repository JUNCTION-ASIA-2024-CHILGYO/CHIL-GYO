//
//  CheckInfo.swift
//  CHIL-GYO
//
//  Created by JIN LEE on 8/10/24.
//

import SwiftUI

struct CheckInfo: View {
    
    let data : [String] = [
        "FoodCard1",
        "FoodCard2",
        "FoodCard3",
        "FoodCard4",
        "FoodCard5"
    ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State private var selectedCard: String?
    @State private var isShowingDetailInfo = false
        
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Wait, did you check the information \non this food?")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.bottom, 16)
            
            LazyVGrid(columns: columns, spacing: 8) {
                           ForEach(data, id: \.self) { cardName in
                               FoodCard(imageName: cardName)
                                   .onTapGesture {
                                       selectedCard = cardName
                                       isShowingDetailInfo = true
                                   }
                           }
                       }
                   }
        .padding(.horizontal)
        .sheet(isPresented: $isShowingDetailInfo, content: {
                    if let card = selectedCard {
                        DetailInfo(cardName: card)
                    }
                })
            }
        }

