//
//  ContentView.swift
//  SearchAppUI
//
//  Created by Nikita Zhdanov on 2023-11-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                
                List {
                    Group {
                        ListItem(image: Image("witcher3"), typeOfProduct: "GAME", name: "Withcer", addInfo: "2015", addColor: Color(.blue))
                        
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
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
