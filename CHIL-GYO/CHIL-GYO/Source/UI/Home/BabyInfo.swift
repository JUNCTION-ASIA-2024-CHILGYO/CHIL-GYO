//
//  BabyInfo.swift
//  CHIL-GYO
//
//  Created by JIN LEE on 8/10/24.
//

import SwiftUI

struct BabyInfo: View {
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.chilOrange)
                .frame(height: 246)
                .cornerRadius(16)
                .padding(.horizontal)
        }
    }
}
#Preview {
    BabyInfo()
}
