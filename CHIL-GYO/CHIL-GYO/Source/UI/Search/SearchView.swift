//
//  SearchView.swift
//  CHIL-GYO
//
//  Created by KimYuBin on 8/10/24.
//

import SwiftUI
import SwiftData

struct SearchView: View {
    @State private var searchText: String = ""
    @State private var recentSearches: [String] = []
    @State private var suggestedSearches: [Food] = []
    @State private var searchResults: [Food] = []
    @State private var isSelectingByRecomment: Bool = false
    
    @Query var foods: [Food]
    
    var body: some View {
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(Color.black)
                    })
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                        
                        TextField("Search...", text: $searchText, onCommit: {
                            handleSearch()
                        })
                        .onChange(of: searchText) { _, _ in
                            if searchText.isEmpty {
                                searchResults = []
                                updateSuggestedSearches()
                                isSelectingByRecomment = false
                            } else if isSelectingByRecomment {
                                
                            } else {
                                searchResults = []
                                updateSuggestedSearches()
                            }
                        }
                        .onAppear(perform: {
                            print(foods)
                        })
                        .foregroundStyle(Color.primary)
                        
                        if !searchText.isEmpty {
                            Button(action: {
                                self.searchText = ""
                                self.suggestedSearches = []
                                self.searchResults = []
                            }) {
                                Image(systemName: "xmark.circle.fill")
                            }
                        } else {
                            EmptyView()
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                    .foregroundStyle(Color.secondary)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10.0)
                }
                
                if !searchText.isEmpty && !searchResults.isEmpty {
                    SearchResultView(foods: $searchResults)
                } else if !searchText.isEmpty && !suggestedSearches.isEmpty {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Recommands")
                            .fontWeight(.semibold)
                            .padding(.top, 20)
                        
                        ForEach(suggestedSearches, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 0) {
                                Button {
                                    isSelectingByRecomment = true
                                    searchText = item.name
                                    searchResults = foods.filter { $0.name.lowercased().contains(item.name.lowercased()) }
                                    
                                } label: {
                                    Text(item.name)
                                        .padding(.vertical, 8)
                                        .padding(.leading, 10)
                                        .padding(.trailing, 10)
                                        .tint(.black)
                                }
                                Divider()
                            }
                        }
                    }
                } else if !recentSearches.isEmpty {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Recents")
                            .fontWeight(.semibold)
                            .padding(.top, 20)
                        
                        WrappingHStack(items: recentSearches, spacing: 8) { item in
                            HStack(spacing: 8) {
                                Button {
                                    isSelectingByRecomment = true
                                    searchText = item
                                    searchResults = foods.filter { $0.name.lowercased().contains(item.lowercased()) }
                                } label: {
                                    Text(item)
                                        .padding(.vertical, 8)
                                        .padding(.leading, 10)
                                        .padding(.trailing, 2)
                                        .tint(.black)
                                }
                                
                                Button(action: {
                                    deleteRecentSearch(item)
                                }) {
                                    Image(systemName: "xmark")
                                        .foregroundStyle(Color.black)
                                }
                                .padding(.trailing, 10)
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 999)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                            .padding(.top, 4)
                        }
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal, 16)
            .navigationTitle("")
            .toolbar(.hidden, for: .navigationBar)
    }
    
    private func handleSearch() {
        if !searchText.isEmpty {
            isSelectingByRecomment = false
            recentSearches.removeAll(where: { $0 == searchText })
            recentSearches.insert(searchText, at: 0)
            
            searchResults = foods.filter { $0.name.lowercased().contains(searchText.lowercased()) }
            
            searchText = ""
            suggestedSearches = []
        }
    }
    
    private func deleteRecentSearch(_ search: String) {
        recentSearches.removeAll(where: { $0 == search })
    }
    
    private func updateSuggestedSearches() {
        if !searchText.isEmpty {
            suggestedSearches = foods.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        } else {
            suggestedSearches = []
        }
    }
}

struct WrappingHStack<Content: View>: View {
    let items: [String]
    let spacing: CGFloat
    let itemContent: (String) -> Content
    
    init(items: [String], spacing: CGFloat = 8, @ViewBuilder itemContent: @escaping (String) -> Content) {
        self.items = items
        self.spacing = spacing
        self.itemContent = itemContent
    }
    
    var body: some View {
        GeometryReader { geometry in
            let availableWidth = geometry.size.width
            
            let itemSizes = items.map { item -> (item: String, size: CGSize) in
                let view = itemContent(item)
                let size = view.sizeThatFits(CGSize(width: CGFloat.infinity, height: CGFloat.infinity))
                return (item, size)
            }
            
            let rows = arrangeItemsIntoRows(itemSizes: itemSizes, availableWidth: availableWidth)
            
            VStack(alignment: .leading, spacing: spacing) {
                ForEach(rows, id: \.self) { row in
                    HStack(spacing: spacing) {
                        ForEach(row, id: \.self) { item in
                            itemContent(item)
                        }
                    }
                }
            }
        }
    }
    
    private func arrangeItemsIntoRows(itemSizes: [(item: String, size: CGSize)], availableWidth: CGFloat) -> [[String]] {
        var rows: [[String]] = [[]]
        var currentRow: [String] = []
        var currentRowWidth: CGFloat = 0
        
        for (item, size) in itemSizes {
            if currentRowWidth + size.width + spacing > availableWidth {
                rows.append(currentRow)
                currentRow = [item]
                currentRowWidth = size.width
            } else {
                currentRow.append(item)
                currentRowWidth += size.width + spacing
            }
        }
        if !currentRow.isEmpty {
            rows.append(currentRow)
        }
        return rows
    }
}

extension View {
    func sizeThatFits(_ size: CGSize) -> CGSize {
        let controller = UIViewController()
        let host = UIHostingController(rootView: self)
        controller.addChild(host)
        host.view.frame = CGRect(origin: .zero, size: size)
        host.view.setNeedsLayout()
        host.view.layoutIfNeeded()
        return host.view.systemLayoutSizeFitting(size)
    }
}

#Preview {
    SearchView()
}
