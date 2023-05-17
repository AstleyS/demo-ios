//
//  ContentView.swift
//  Demo
//
//  Created by Astley Santos on 15/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // This is a depth stack by z
        ZStack {
            // This is a vertical stack, so it's stacked in order vertically
            VStack {
                Image("fuji")
                    .imageScale(.large)
                     .foregroundColor(.accentColor)
                Text("Welcome to Japan!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



