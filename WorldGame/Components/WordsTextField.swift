//
//  WordsTextField.swift
//  WorldGame
//
//  Created by  валера on 15.04.2023.
//

import SwiftUI

struct WordsTextField: View {
    
    @State var word: Binding<String>
    var placeHolder: String
    
    var body: some View {
        TextField(placeHolder, text: word)
            .font(.title2)
            .padding()
            .background(.white)
            .cornerRadius(12)
    }
}
