//
//  TitleText.swift
//  WorldGame
//
//  Created by  валера on 15.04.2023.
//

import SwiftUI

struct TitleText: View {
    
    @State var text = ""
    
    var body: some View {
        Text(text)
            .padding()
            .font(.custom("AvenirNext-Bold", size: 42))
            .cornerRadius(16)
            .frame(maxWidth: .infinity)
            .background(Color("FirstPlayer"))
            .foregroundColor(.white)
        Text("Hello")
    }
}

struct TitleText_Previews: PreviewProvider {
    static var previews: some View {
        TitleText()
    }
}
