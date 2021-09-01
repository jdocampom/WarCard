//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Juan Diego Ocampo on 8/31/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // MARK: - CN Tower Card
            ZStack {
                /// Tag: Image
                Image("toronto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                /// Tag: VStack for the Text
                VStack(alignment: .center) {
                    Text("CN Tower")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                    Text("Toronto")
                        .font(.caption)
                        .padding([.leading, .bottom, .trailing])
                }
                /// Tag: VStack Modifiers
                .background(Color.black)
                .opacity(0.8)
                .cornerRadius(10)
                /// Tag: VStack Element Modifiers
                .foregroundColor(Color.white)
                
            }.padding()
            
            // MARK: - Big Ben Card
            ZStack {
                /// Tag: Image
                Image("london")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                /// Tag: VStack for the Text
                VStack(alignment: .center) {
                    Text("Big Ben")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                    Text("London")
                        .font(.caption)
                        .padding([.leading, .bottom, .trailing])
                }
                /// Tag: VStack Modifiers
                .background(Color.black)
                .opacity(0.8)
                .cornerRadius(10)
                /// Tag: VStack Element Modifiers
                .foregroundColor(Color.white)
                
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
