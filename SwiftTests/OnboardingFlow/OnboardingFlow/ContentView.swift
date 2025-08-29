//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by Florian Wessels on 8/22/25.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView {
                   WelcomePage()
                   FeaturesPage()
               }
        .background(Gradient(colors: gradientColors))
               .tabViewStyle(.page)
    }
}

#Preview {
    ContentView()
}
