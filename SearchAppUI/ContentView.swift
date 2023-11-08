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
                    ListItem(imageName: "witcher3", typeOfProduct: "GAME", name: "Withcer", addInfo: "2015")
                    
                    ListItem(imageName: "witcher3", typeOfProduct: "GAME", name: "Withcer", addInfo: "2015")
                    
                    ListItem(imageName: "witcher3", typeOfProduct: "GAME", name: "Withcer", addInfo: "2015")
                    
                    ListItem(imageName: "witcher3", typeOfProduct: "GAME", name: "Withcer", addInfo: "2015")
                }
                
                
            }
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
