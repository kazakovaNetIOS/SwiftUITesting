//
//  ContentView.swift
//  SwiftUITesting
//
//  Created by Kazakova Nataliya on 07.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .id("hello")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
