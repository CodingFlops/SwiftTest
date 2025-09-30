//
//  ContentView.swift
//  BitBet
//
//  Created by Florian Wessels on 9/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView{
                BetBetView()
                BetDarkView()
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
