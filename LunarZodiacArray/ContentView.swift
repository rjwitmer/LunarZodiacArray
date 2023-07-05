//
//  ContentView.swift
//  LunarZodiacArray
//
//  Created by Bob Witmer on 2023-07-04.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animalNames = ["RAT",
                                      "OX",
                                      "TIGER",
                                      "RABBIT",
                                      "DRAGON",
                                      "SNAKE",
                                      "HORSE",
                                      "GOAT",
                                      "MONKEY",
                                      "ROOSTER",
                                      "DOG",
                                      "PIG"
    ]
    @State private var year = 2023
    @State private var index = 3
    
    var body: some View {
        VStack {
            Text("\(String(year))")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.accentColor)
            
            Spacer()
            
            Image("\(animalNames[index])")
                .resizable()
                .scaledToFit()
                .foregroundColor(.accentColor)
            
            Text("\(animalNames[index])")
                .font(.largeTitle)
                .fontWeight(.black)
            
            Spacer()
            
            HStack {
                Button {
                    year -= 1
                    
                    if index > 0 {
                        index -= 1
                    } else {
                        index = 11
                    }
                } label: {
                    Image(systemName: "chevron.left")
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                .font(.largeTitle)
                .fontWeight(.black)
                
                Spacer()
                
                Button {
                    year += 1
                    
                    if index < 11 {
                        index += 1
                    } else {
                        index = 0
                    }
                } label: {
                    Image(systemName: "chevron.right")
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                .font(.largeTitle)
                .fontWeight(.black)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
