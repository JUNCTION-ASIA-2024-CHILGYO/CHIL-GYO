//
//  Home.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/10/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
            NavigationStack {
                ZStack {
                    Color.chilBGPrimary
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack(spacing: 0) {
                        ScrollView(showsIndicators: false) {
                            VStack {
                                NavigationLink(destination: SearchView()) {
                                    SearchBar()
                                        .padding()
                                }
                                NavigationLink {
                                    MyPageView()
                                } label: {
                                    Image(.ageCard1)
                                        .padding(.top, 4)
                                }
                                
                                
                                Image(.borderLine)
                                    .padding(.top, 40)
                                
                                FoodRecommend()
                                    .padding(.top, 32)
                                
                                CheckInfo()
                                    .padding(.top, 36)
                                
                                Image(.bottomLine)
                                    .padding(.top, 25)
                            }
                        }
                    }
                    .padding(.top, 54)
                }
                .ignoresSafeArea()
            }
        }
    }

#Preview {
    Home()
}
