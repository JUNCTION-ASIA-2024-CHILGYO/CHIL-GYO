//
//  SearchBar.swift
//  CHIL-GYO
//
//  Created by JIN LEE on 8/10/24.
//

import SwiftUI

struct SearchBar: View {
    
    var body: some View {
        NavigationLink(destination: SearchView()) {
            HStack{
                Rectangle()
                    .fill(Color.fills)
                    .cornerRadius(10)
                    .overlay{
                        VStack(alignment: .leading){
                            Text("\(Image(systemName: "magnifyingglass"))Search...")
                                .foregroundColor(.labels)
                        }
                    }
            }
        }.frame(height: 36)
    }
        
}
