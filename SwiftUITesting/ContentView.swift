//
//  ContentView.swift
//  SwiftUITesting
//
//  Created by Kazakova Nataliya on 07.11.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        Toggle("Dark Mode?", isOn: $viewModel.darkModeEnabled)
            .id(ContentView.Identifiers.darkModeSwitch)
            .padding()
    }
}

extension ContentView {
    enum Identifiers {
        static let darkModeSwitch = "darkModeSwitch"
    }
}

extension ContentView {
    class ViewModel: ObservableObject {
        @Published var darkModeEnabled = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: .init())
    }
}
