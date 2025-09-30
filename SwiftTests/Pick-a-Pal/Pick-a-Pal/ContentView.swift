//
//  ContentView.swift
//  Pick-a-Pal
//
//  Created by Florian Wessels on 9/4/25.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = ["Elisha", "Andre", "Jasmine", "Po-Chun"]
    @State private var nameToAdd = ""
    @State private var pickedName = ""
    
    var body: some View {
        VStack {
            Text("Pick-a-Pal")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.secondary)
            List{
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
            
            TextField("Add Name", text: $nameToAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    if !nameToAdd.isEmpty {
                        names.append(nameToAdd)
                        nameToAdd = ""
                        
                    }
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
