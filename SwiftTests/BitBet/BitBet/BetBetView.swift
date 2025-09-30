//
//  BetBetView.swift
//  BitBet
//
//  Created by Florian Wessels on 9/4/25.
//

import SwiftUI

struct BetBetView: View {
    @State private var moneys: String = ""
    @State private var money: Int = 10
    @State private var numberOfPips: Int = 1
    @State private var oddsString: String = ""
    @State private var bettings: String = ""
    @State private var newMoney: Int = 0
    
    var odds: Int {
        Int(oddsString) ?? 0
        }
    
    var betts: Int {
        Int(bettings) ?? 0
        }
    
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "bitcoinsign")
                    .foregroundStyle(.tint)
                Text("\(money)")
                    .foregroundStyle(.tint)
            }
            
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth:100, maxHeight:100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
            
            Button("Roll") {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                    
                    if odds == numberOfPips {
                        newMoney = money+(numberOfPips*3)
                        money = newMoney
                    } else {
                        newMoney = money-betts
                        money = newMoney //reset bet after rollcheck
                    }
                    

                }
                
            }
            .buttonStyle(.bordered)
            
            Text("beta 1.0.0")
                .foregroundStyle(.secondary)
                .font(.caption)
                .padding(.top, 5)
        
            TextField("Enter guess", text: $oddsString)
                .keyboardType(.numberPad)
                .foregroundStyle(.white)
                .padding(.leading)
                .frame(width: 200)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.gray.opacity(0.2))
                )
                .padding(.top, 5)
                .onChange (of: oddsString){ oldValue, newValue in
                    let filtered = newValue.filter { "123456".contains($0) }
                    oddsString = filtered
                }
            
            TextField("Enter bet", text: $bettings)
                .keyboardType(.numberPad)
                .padding(.leading)
                .foregroundStyle(.white)
                .frame(width: 200)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.gray.opacity(0.2))
                )
                .padding(.top, 5)
                .onChange (of: bettings){ oldValue, newValue in
                    let filtered = newValue.filter { "0123456789".contains($0) }
                    bettings = filtered
                    if betts > money {
                        bettings = "\(money)"
                    } else {
                        bettings = filtered
                    }
                }
               
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    BetBetView()
}
