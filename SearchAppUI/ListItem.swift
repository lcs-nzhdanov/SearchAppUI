//
//  ListItem.swift
//  SearchAppUI
//
//  Created by Nikita Zhdanov on 2023-11-08.
//

import SwiftUI

struct ListItem: View {
    
    let imageName: String
    let typeOfProduct: String
    let name: String
    let addInfo: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 12.5))
                .padding(.horizontal, 5)
            
            VStack(spacing: 5) {
                HStack {
                    Text(typeOfProduct)
                        .bold()
                    .foregroundStyle(.blue)
                    
                    Spacer()
                }
                
                HStack {
                    Text(name)
                    .font(.system(size: 22))
                    .bold()
                    Spacer()
                }
                
                HStack {
                    Text(addInfo)
                        .font(.system(size: 20))
                    .foregroundStyle(Color("Grey"))
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ListItem(imageName: "witcher3", typeOfProduct: "GAME", name: """
The Witcher 3:
Wild Hunt
""", addInfo: "2015")
}
