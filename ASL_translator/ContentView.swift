//
//  ContentView.swift
//  ASL_translator
//
//  Created by Chloe Low on 6/26/23.
//

import SwiftUI

struct ContentView: View {
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
                                .font(.body)
                                .fontWeight(.light)
                        }
                        
                        NavigationLink(destination: HistoryOfASL()) {
                            Text("History")
                                .font(.body)
                                .fontWeight(.light)
                        }
                        
                        NavigationLink(destination: Famous_DHOH_People()) {
                            Text("Famous DHOH")
                                .font(.body)
                                .fontWeight(.light)
                        }
                        
                        NavigationLink(destination: Alphabet()) {
                            Text("Alphabet")
                                .font(.body)
                                .fontWeight(.light)
                        }
                    }
                
                
                
            }
            
            Text("Enter text to be translated:")
            let text = readLine()
            
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
