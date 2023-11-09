//
//  ContentView.swift
//  SearchAppUI
//
//  Created by Nikita Zhdanov on 2023-11-07.
//

import SwiftUI

struct ContentView: View {
    private let products = ["Witcher 3: Wild Hunt", "Milltown", "Millerville", "Milwaukee", "Millcreek",
    "Milagro", "Milano"]
    
    @State private var searchResults: [String] = []
    @State private var locationSearch = ""
    @State private var destination = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                
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
                    .padding(.horizontal, 12.5)
                }
                
                List {
                    Group {
                        ListItem(image: Image("witcher3"), typeOfProduct: "GAME", name: "Witcher", addInfo: "2015", addColor: Color(.blue))
                        
                        ListItem(image: Image("witcher3"), typeOfProduct: "GAME", name: "Withcer", addInfo: "2015", addColor: Color(.blue))
                        
                        ListItem(image: Image("witcher3"), typeOfProduct: "GAME", name: "Withcer", addInfo: "2015", addColor: Color(.blue))
                        
                        ListItem(image: Image("witcher3"), typeOfProduct: "GAME", name: "Withcer", addInfo: "2015", addColor: Color(.blue))
                        
                        ListItem(image: Image("witcher3"), typeOfProduct: "GAME", name: "Withcer", addInfo: "2015", addColor: Color(.blue))
                    }
                    .listRowSeparator(.hidden)
                    .frame(height: 130)
                }
                .frame(minHeight: 590)
                .listStyle(.plain)
            }
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
        .ignoresSafeArea()
}
