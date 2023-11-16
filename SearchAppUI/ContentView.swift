//
//  ContentView.swift
//  SearchAppUI
//
//  Created by Nikita Zhdanov on 2023-11-07.
//

import SwiftUI

struct ContentView: View {
    private let products = ["Witcher 3: Wild Hunt", "The Witcher Official Cookbook", "The Witcher 2025", "The Witcher Series", "The Witcher 2: Assassins of Kings"]
    
    @State private var searchResults: [String] = []
    @State private var locationSearch = ""
    @State private var destination = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                
                ScrollView(.horizontal) {
                    LazyHStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 120, height: 40)
                            Text("Top Results")
                                .foregroundStyle(.black)
                                .bold()
                        }
                        
                        Group {
                            Text("Movies")
                                .bold()
                            
                            Text("Series")
                                .bold()
                            
                            Text("Games")
                                .bold()
                            
                            Text("Books")
                                .bold()
                            
                        }
                        .padding(.horizontal, 10)
                    }
                }
                
                List {
                    Group {
                        ListItem(image: Image("witcher3"), typeOfProduct: "GAME", name: """
The Witcher 3:
Wild Hunt
""", addInfo: "2015", addColor: Color(.blue))
                        
                        ListItem(image: Image("Cookbook"), typeOfProduct: "BOOK", name: """
The Witcher
Official Cookbook
""", addInfo: """
Anita Sarna & Karolina
Krupecka, November 21
""", addColor: Color(.green))
                        
                        ListItem(image: Image("Witcher_2025"), typeOfProduct: "GAME", name: "The Witcher", addInfo: "Q4 2025", addColor: Color(.blue))
                        
                        ListItem(image: Image("Witcher_series"), typeOfProduct: "SERIES", name: "The Witcher", addInfo: "2019", addColor: Color(.purple))
                        
                        ListItem(image: Image("Witcher2"), typeOfProduct: "GAME", name: """
The Witcher 2:
Assassins of Kings
""", addInfo: "2011", addColor: Color(.blue))
                    }
                    .listRowSeparator(.hidden)
                    .frame(height: 130)
                }
                .frame(minHeight: 590)
                .listStyle(.plain)
            }
            .padding(.top, -25)
            
        }
        .searchable(text: $locationSearch) {
            ForEach(searchResults, id: \.self) { name in
                Button(name) {
                    destination = name
                }
            }
        }
        .onChange(of: locationSearch) { _, location in
            searchResults = products.filter { name in
                name.hasPrefix(locationSearch)
            }
        }
        
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
