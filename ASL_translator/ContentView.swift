//
//  ContentView.swift
//  ASL_translator
//
//  Created by Chloe Low on 6/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    var body: some View {
        
        NavigationStack {
        
        ZStack {
            
            VStack {
                Text("ASL Translator")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .frame(maxHeight: .infinity, alignment: .top)
                
                    .toolbar{
                        NavigationLink(destination: WordOfTheDay()) {
                            Text("Word of The Day")
                                .font(.footnote)
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                        }
                        
                        NavigationLink(destination: HistoryOfASL()) {
                            Text("History")
                                .font(.footnote)
                                .fontWeight(.light)
                        }
                                                
                        NavigationLink(destination: Famous_DHOH_People()) {
                            Text("Famous DHOH")
                                .font(.footnote)
                                .fontWeight(.light)
                        }
                        
                        NavigationLink(destination: Alphabet()) {
                            Text("Alphabet")
                                .font(.footnote)
                                .fontWeight(.light)
                        }
                    }
                
                
                
            }
            
            TextField(
                "Enter text to be translated:",
                    text: $text
            )                       .font(.body)
                .fontWeight(.regular)
                .frame(maxHeight: .infinity, alignment: .center)
            
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
