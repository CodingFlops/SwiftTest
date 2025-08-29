//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by Florian Wessels on 8/22/25.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            
            Text("Welcome to My App")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
                .foregroundStyle(.white)
           
            
            Text("This is an app called onboarding flow.")
                .font(.title2)
                .foregroundStyle(.white)
             
        }
        
        .padding()
        
    }
}

#Preview {
    WelcomePage()
}
