//
//  CheckInfo.swift
//  CHIL-GYO
//
//  Created by JIN LEE on 8/10/24.
//

import SwiftUI

struct CheckInfo: View {
    
    let data = Array(1...10).map { "목록 \($0)"}
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        ]
        
    var body: some View {
        VStack(alignment:.leading){
            
            Text("Wait, did you check the information \n on this food?")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.bottom, 16)
            
            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(data, id: \.self) { information in
                    VStack{
                        Text(information)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    } 
                    .frame(width: 115, height: 124)
                        .background(Color.chilRed)
                        .cornerRadius(12)
//                    NavigationLink(destination: CardFlipView(boastID: boast.id)){
//                        AwardThumbnailView(id: boast.id)
//                    }
                }
            }
        }
        .padding(.horizontal)
    }
}
