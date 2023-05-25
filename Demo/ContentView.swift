//
//  ContentView.swift
//  Demo
//
//  Created by Astley Santos on 15/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    // This is a property wrapper and changes the behaviour of the view
    @State var image = "japan1"
    
    var body: some View {
        
        // This is a depth stack by z
        ZStack {
            // This is a vertical stack, so it's stacked in order vertically
            VStack {
            
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                    .foregroundColor(.accentColor)
                Text("Welcome to Japan!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                                
                Button("Next Image") {
                    click()
                }
                    .padding()
                    .foregroundColor(.orange)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .background(Rectangle()
                        .cornerRadius(15)
                        .foregroundColor(.secondary)
                    )
            
                
            }
        }
    }
    
    
    // CREATE AN ACTION BUTTON
    func click() {
        var rand = String(Int.random(in: 1...3))
        while (image == ("japan" + rand)) {
            rand = String(Int.random(in: 1...3))
        }
        image = "japan" + rand
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



