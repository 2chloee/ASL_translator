//
//  HistoryOfASL.swift
//  ASL_translator
//
//  Created by Chloe Low on 6/27/23.
//

import SwiftUI

struct HistoryOfASL: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("History")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .frame(alignment: .top)
                        Spacer()
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
                    Text("\tAmerican Sign Language (ASL) has a fascinating and complex history, dating back to the early 19th century, when Frenchman Laurent Clerc arrived in America. Clerc was a deaf educator who brought with him French Sign Language (FSL) and introduced it to the American deaf community. Over time, FSL and other sign languages merged to form ASL, a sign language with its own unique grammar and syntax. \r\tWhile many people believe ASL is a derivative of English, it is actually a distinct and separate language with its own unique grammar and syntax. ASL has been used in the United States for hundreds of years, undergoing many changes and adaptations over time. It is widely used by the deaf, hard-of-hearing community, interpreters, educators, and others who work with the DHOH. \r\tToday, ASL is recognized as an official language in the United States and is used by approximately two million people across the country. Many people are trying to expand its usage even further by increasing its popularity in schools, colleges, and workplaces.")
                        .font(.body)
                        .fontWeight(.light)
                        .padding(.horizontal)
                        .padding(.horizontal)
                }
            }
        }
    }
}

struct HistoryOfASL_Previews: PreviewProvider {
    static var previews: some View {
        HistoryOfASL()
    }
}
