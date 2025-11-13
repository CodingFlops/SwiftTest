//
//  Player.swift
//  ScoreKeeper
//
//  Created by Florian W on 10/14/25.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    
    var name: String
    var score: Int
}
