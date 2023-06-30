//
//  Famous DHOH People.swift
//  ASL_translator
//
//  Created by Chloe Low on 6/27/23.
//

import SwiftUI

struct Famous_DHOH_People: View {
    let images = ["millicent", "marlee", "kitty"]
    var body: some View {
       
            VStack {
                TabView {
                    ForEach(images, id: \.self) { imageName in
                        VStack {
                            Image(imageName)
                                .resizable()
                                .scaledToFit()
                                .padding()
                            
                            Text(getBlurb(for: imageName))
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black.opacity(0.7))
                                .cornerRadius(10)
                                .padding(.horizontal, 20)
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
                Spacer()
            }
            .background(Color(red: 104/255, green: 161/255, blue: 218/255))
            .ignoresSafeArea()
        
        }
        
        func getBlurb(for imageName: String) -> String {
            // Replace with your blurb logic based on the image name
            // Example: Return different blurbs for different images
            switch imageName {
            case "millicent":
                return "Millicent Simmonds is an actress best known for A Quiet Place and is working on the adaptation of Sarah Nović's novel True Biz. Millicent lost her hearing when she was a couple mothes old due to a medication overdose. She uses social media to educate people about deafness."
            case "marlee":
                return "Marlee Matlin is the first and only deaf woman to win an Academy Award for her performace in 'Children of a Lesser God'. She is also known for the television series Switched at Birth and the 2022 Best Pitcure winner CODA."
            case "kitty":
                return "Kitty O'Neil is an American stuntwoman and speed racer. By age 2 her mother realized Kitty couldn't hear and taught her how to read lips and speak. Throughout her life, O'Neil developed multiple illnesses, but she never let it stop her. She was diagnosed with cancer when she was 20, but went on to have a long career and set 22 speed records."
            default:
                return ""
            }
        }
    }

    
    struct Famous_DHOH_People_Previews: PreviewProvider {
        static var previews: some View {
            Famous_DHOH_People()
        }
    }

