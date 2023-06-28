//
//  ContentView.swift
//  ASL_translator
//
//  Created by Chloe Low on 6/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    let signs =
        ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
        "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l",
        "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x",
        "y", "z"]; // for translating text into sign language
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
            VStack(){
                
                TextField(
                    "Enter text to be translated...",
                    text: $text, axis: .vertical
                )                       .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .fontWeight(.regular)
                    
                
                    .frame(maxHeight: .infinity, alignment: .center)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.white))
                    .cornerRadius(15)
                    .shadow(radius: 20)
                    .padding()
                    .padding()
                    .padding()
                    .padding()
                
                
                Button("Submit") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                
            }
            
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
