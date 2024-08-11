//
//  SearchResultView.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/11/24.
//

import SwiftUI
import SwiftData

struct SearchResultView: View {
    @Binding var foods: [Food]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 15) {
                ForEach(foods.indices, id: \.self) { i in
                    NavigationLink {
                        FoodDetail(food: $foods[i])
                    } label: {
                        SearchResultRow(food: foods[i])
                    }
                }
            }
            .padding(.top, 20)
        }
    }
}

private extension SearchResultView {
    
    func SearchResultRow(food: Food) -> some View {
        HStack(alignment: .top, spacing: 12) {
            food.foodImage
                .resizable()
                .scaledToFill()
                .frame(width: 136, height: 172)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            
            VStack(alignment: .leading, spacing: 7) {
                Text(food.name)
                    .font(.title3)
                    .bold()
                    .foregroundStyle(.black)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 4) {
                        ForEach(food.issues) { issue in
                            IssueStrokeChip(issue.name)
                        }
                    }
                    .padding(.leading, 0.5)
                }
                .scrollIndicators(.never)
                
                if let issue = food.issues.first {
                    Text(issue.script)
                        .font(.caption)
                        .foregroundStyle(.black)
                        .lineLimit(3)
                        .multilineTextAlignment(.leading)
                }
                
            }
        }
    }
    
    func IssueStrokeChip(_ text: String) -> some View {
        Text(text)
            .font(.footnote)
            .foregroundStyle(.black)
            .lineLimit(1)
            .fixedSize()
            .padding(.vertical, 4)
            .padding(.horizontal, 10)
            .background {
                Capsule()
                    .stroke(.black, lineWidth: 1)
            }
            .frame(height: 26)
    }
}

//#Preview {
//    let config = ModelConfiguration(isStoredInMemoryOnly: true)
//    let container = try! ModelContainer(for: Food.self, configurations: config)
//    
//    container.mainContext.insert(Food.tunaSashimi)
//    container.mainContext.insert(Food.halibutSashimi)
//    
//    return SearchResultView()
//        .modelContainer(container)
//}
