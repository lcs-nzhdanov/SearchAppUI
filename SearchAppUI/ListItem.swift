//
//  ListItem.swift
//  SearchAppUI
//
//  Created by Nikita Zhdanov on 2023-11-08.
//

import SwiftUI

struct ListItem: View {
    
    let image: Image
    let typeOfProduct: String
    let name: String
    let addInfo: String
    let addColor: Color
    
    var body: some View {
        HStack {
            image
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .frame(width: 85)
                .clipShape(RoundedRectangle(cornerRadius: 12.5))
                .padding(.horizontal, 5)
            
            VStack(spacing: 5) {
                HStack {
                    Text(typeOfProduct)
                        .font(.system(size: 17))
                        .bold()
                    .foregroundStyle(addColor)
                    
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
                        .font(.system(size: 17))
                    .foregroundStyle(Color("Grey"))
                    
                    Spacer()
                }
            }
            
            ZStack {
                Circle()
                    .fill(.white)
                    .frame(height: 22.5)
                
                Image(systemName: "plus.circle.fill")
                    .font(.system(size: 22.5))
                    .bold()
                    .foregroundStyle(Color(addColor))
                .padding(.horizontal, 5)
            }
        }
    }
}

#Preview {
    ListItem(image: Image("witcher3"), typeOfProduct: "GAME", name: """
The Witcher 3:
Wild Hunt
""", addInfo: "2015", addColor: Color(.blue))
}
