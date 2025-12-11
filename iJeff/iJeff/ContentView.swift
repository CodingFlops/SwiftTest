//
//  ContentView.swift
//  iJeff
//
//  Created by Florian W on 12/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .foregroundStyle(.gray)
            .padding(.all)
        VStack {
            Image(systemName: "hand.thumbsdown.fill")
                .symbolEffect(.rotate.counterClockwise.byLayer, options: .repeat(.periodic(delay: 0.0)))
                .font(.largeTitle)
                .foregroundStyle(.red)
            Text("You've been Jeffed!")
                .font(.title)
                .fontWeight(.bold)
            Text("Take this personally Netease :(")
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
