//
//  Alphabet.swift
//  ASL_translator
//
//  Created by Chloe Low on 6/27/23.
//

import SwiftUI

struct Alphabet: View {
    var body: some View {
        Image("alphabet")
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)
    }
}

struct Alphabet_Previews: PreviewProvider {
    static var previews: some View {
        Alphabet()
    }
}
