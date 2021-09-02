//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Juan Diego Ocampo on 8/31/21.
//

import SwiftUI

struct ContentView: View {
    @State private var pcCard: String = "card14"
    @State private var userCard: String = "card13"
    @State private var pcScore: Int = 0
    @State private var userScore: Int = 0
    var body: some View {
        
        ZStack {
            
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(userCard)
                    Spacer()
                    Image(pcCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    let userCardValue = Int.random(in: 2...14)
                    let pcCardValue = Int.random(in: 2...14)
                    userCard = "card" + String(userCardValue)
                    pcCard = "card" + String(pcCardValue)
                    if userCardValue > pcCardValue {
                        userScore += 1
                    } else if userCardValue < pcCardValue {
                        pcScore += 1
                    } else {
                        pcScore += 0
                        userScore += 0
                    }
                }) {
                    Image("dealbutton")
                }
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(userScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(pcScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
