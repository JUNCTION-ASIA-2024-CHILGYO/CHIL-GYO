//
//  Search.swift
//  CHIL-GYO
//
//  Created by JIN LEE on 8/11/24.
//

import SwiftUI

struct SearchField: View {
    
    @State private var searchText: String = ""
       
       var body: some View {
           NavigationStack {
               Text("Search For \(searchText)")
                   .navigationTitle("Searchable Example")
           }
           .searchable(text: $searchText, prompt: "Type Here!")
       }
   }
