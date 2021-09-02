//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Juan Diego Ocampo on 8/31/21.
//

import SwiftUI

struct ContentView: View {
    @State var cardList: [String] = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"]
    @State var pcCard: String = "14"
    @State var userCard: String = "13"
    @State var pcScore: Int = 0
    @State var userScore: Int = 0
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
                    userCard = cardList.randomElement()!
                    pcCard = cardList.randomElement()!
                    if Int(userCard)! > Int(pcCard)! {
                        userScore += 1
                    } else if Int(userCard)! < Int(pcCard)! {
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
