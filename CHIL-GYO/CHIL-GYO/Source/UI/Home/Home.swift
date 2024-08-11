//
//  Home.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/10/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color.chilBGPrimary
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView{
                    VStack{
                        
                        SearchBar()
                            .padding()
                        
                        BabyInfo()
                            .padding(.top, 4)
                        
                        Image(.borderLine)
                            .padding(.top, 40)
                        
                        FoodRecommend()
                            .padding(.top, 32)
                        
                        CheckInfo()
                            .padding(.top, 36)
                    }
                }
            }
        }
    }
}

#Preview {
    Home()
}
