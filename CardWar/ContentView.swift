//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Juan Diego Ocampo on 8/31/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            HStack(){
                Text("Hello")
                Spacer()
                Text("World!")
            }
            .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
