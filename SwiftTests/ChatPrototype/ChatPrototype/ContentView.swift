//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Florian Wessels on 8/14/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Knock, Knock")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 20)
                .padding(30)
            Text("Who's there?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 20)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
