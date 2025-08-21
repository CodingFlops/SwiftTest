//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Florian Wessels on 8/19/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
            }
            .padding()
        }
    }

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String{
        isRainy ?
        "cloud.rain.fill":
        "sun.max.fill"
    }
    
    var iconColor: Color {
        isRainy ?
        Color.blue:
        Color.yellow
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.title3)
                .fontWeight(.heavy)
                .foregroundStyle(Color.gray)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High    \(high) ºF")
                .fontWeight(.semibold)
            Text("Low        \(low) ºF")
                .fontWeight(.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
