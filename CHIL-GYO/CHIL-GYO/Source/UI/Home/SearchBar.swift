//
//  SearchBar.swift
//  CHIL-GYO
//
//  Created by JIN LEE on 8/10/24.
//

import SwiftUI

struct SearchBar: View {
    
    var body: some View {
            HStack{
                Rectangle()
                    .fill(Color.fills)
                    .cornerRadius(10)
                    .overlay{
                        HStack{
                            Text("\(Image(systemName: "magnifyingglass"))Search...")
                                .foregroundColor(.labels)
                                .padding()
                            
                            Spacer()
                        }
                    }
            }.frame(height: 36)
        }
    
}
