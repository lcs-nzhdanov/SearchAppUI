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
                HStack {
                    Image("witcher3")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 12.5))
                        .padding(.horizontal, 5)
                    
                    VStack(spacing: 5) {
                        HStack {
                            Text("GAME")
                                .bold()
                            .foregroundStyle(.blue)
                            
                            Spacer()
                        }
                        
                        HStack {
                            Text("""
    The Witcher 3:
    Widld Hunt
    """)
                            .font(.system(size: 22))
                            .bold()
                            Spacer()
                        }
                        
                        HStack {
                            Text("2015")
                                .font(.system(size: 20))
                            .foregroundStyle(Color("Grey"))
                            
                            Spacer()
                        }
                    }
                }
                .frame(height: 125)
                
                
            }
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
