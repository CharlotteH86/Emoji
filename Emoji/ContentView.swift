//
//  ContentView.swift
//  Emoji
//
//  Created by Charlotte Holst on 2024-04-14.
//

import SwiftUI

enum Emojis: String, CaseIterable {
    case 🥰, 😍, 😘, 💕, 🩷
}

struct ContentView: View {
    @State var selection: Emojis = .🥰
    
    var body: some View {
        
        NavigationView{
            
            
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select lovely Emoji",selection: $selection){ ForEach(Emojis.allCases, id: \.self) {
                    emoji in Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Charlottes Emojis")
                        .padding(.top, 200)
                        .font(.largeTitle.bold())
                        .accessibilityAddTraits(.isHeader)
                }
            }
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
