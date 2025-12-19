//
//  SettingsView.swift
//  ScoreKeeper
//
//  Created by Florian W on 12/18/25.
//

import SwiftUI

struct SettingsView: View {
    @Binding var startingPoints: Int
        
    var body: some View {
        VStack(alignment: .leading){
            Text("Game Rules")
                .font(.headline)
            Divider()
        }
        .padding()
    }
}

#Preview {
    SettingsView()
}
