//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by Florian Wessels on 8/22/25.
//

import SwiftUI
struct FeaturesPage: View {
    @State private var showTerminal = true
    var body: some View {
        VStack {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top, 100)
            
            FeatureCard(iconName: "apple.terminal.fill",
                        description: "An apple terminal from SF Symbols 7 Beta with a nifty animation")
            .symbolEffect(.bounce.up.byLayer, options: .repeat(.periodic(delay: 10.0)))
            
            FeatureCard(iconName: showTerminal ? "apple.terminal.fill" : "pencil.and.scribble", description: "A toggleable icon")
                .contentTransition(.symbolEffect(.replace))
            
            Button("Toggle") {
                withAnimation(.easeInOut(duration: 0.5)) {
                    showTerminal.toggle()
                }
                
            }
            
            .padding(10)
            .background(.tint, in:RoundedRectangle(cornerRadius: 30))
            .foregroundStyle(.white)
            .opacity(0.80)
            .brightness(-0.1)
            
            Spacer()
        }
        .padding()
    }
    
}
    #Preview {
        FeaturesPage()
            .frame(maxHeight: .infinity)
            .background(Gradient(colors: gradientColors))
            .foregroundStyle(.white)
    }
