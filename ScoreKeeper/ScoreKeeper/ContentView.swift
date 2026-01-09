//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Florian W on 10/7/25.
//

import SwiftUI

struct ContentView: View {
    @State private var scoreboard = Scoreboard()
    @State private var startingPoints = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Score Keeper")
                .font(.title)
                .bold()
                .padding(.bottom)
            
            SettingsView(startingPoints: $startingPoints)
            
            Grid {
                GridRow{
                    Text("Player")
                        .gridColumnAlignment(.leading)
                    Text("Score")
                }
                .font(.headline)
                
                ForEach($scoreboard.players) { $players in
                    GridRow {
                        TextField("Name", text: $players.name)
                        Text("\(players.score)")
                        Stepper("\(players.score)", value: $players.score)
                            .labelsHidden()
                    }
                }
            }
            .padding(.vertical)
            
            Button("Add Player", systemImage: "plus") {
                scoreboard.players.append(Player(name: "", score: 0))
            }
            
            Spacer()
            HStack{
                Spacer()
                switch scoreboard.state {   
                case .setup:
                    Button("Start", systemImage: "play"){
                        scoreboard.state = .playing
                        scoreboard.resetScores(to: startingPoints)
                    }
                case .playing:
                    Button("End", systemImage: "stop") {
                        scoreboard.state = .gameOver
                    }
                case . gameOver:
                    Button("Reset", systemImage: "arrow.counterclockwise") {
                        scoreboard.state = .setup
                    }
                }
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
