//
//  WordOfTheDay.swift
//  ASL_translator
//
//  Created by Chloe Low on 6/27/23.
//

import SwiftUI

struct WordOfTheDay: View {
    @State private var userInput = ""
    @State private var selectedWord = ""
    
    let wordOfTheDay = ["Gist", "Obstinate", "Meet-cute", "Concatenate", "Yips", "Trenchant", "Blandishment", "Etiquette", "Saturnine", "Advocate", "Redux", "Inchmeal", "Fruiton", "Dissemble", "Vox populi", "Perennial", "Microcosm", "Reconcile", "Indomitable", "Nudnik", "Assuage", "Jaundiced", "Hashtag", "Sashay", "Lambent", "Consigliere", "Pungent", "Kludge", "Dyed in the wool"]
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            Text("Word of the Day")
                .font(.largeTitle)
                .fontWeight(.light)
                .frame(alignment: .top)
            
            TextField("What day of the month is it?", text: $userInput)
                .font(.body)
                .multilineTextAlignment(.center)
            
            Button(action: {
                let getWord = Int(userInput) ?? 0
                if getWord >= 1 && getWord <= wordOfTheDay.count {
                    selectedWord = wordOfTheDay[getWord - 1]
                } else {
                    selectedWord = ""
                }
            }) {
                Text("Submit")
            }
            
            if selectedWord.isEmpty {
                Spacer()
                Text("No word selected.")
                    .font(.headline)
                    .foregroundColor(.blue)
            } else {
                Spacer()
                Text((selectedWord))
                    .font(.headline)
                Spacer()
                
                
                Text("according to merriam-webster")
                
            }
            
        }
    }
}
    struct WordOfTheDay_Previews: PreviewProvider {
        static var previews: some View {
            WordOfTheDay()
                
            
        }
    }

