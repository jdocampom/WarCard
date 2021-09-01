//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Juan Diego Ocampo on 8/31/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
        // These are the modifiers for the green background and white text
            .padding()
            .background(Color.green)
            .cornerRadius(10)
            .foregroundColor(Color.white)
        // These are the additional modifiers for the blue background
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
