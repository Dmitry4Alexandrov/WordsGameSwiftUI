//
//  ContentView.swift
//  WorldGame
//
//  Created by  валера on 15.04.2023.
//

import SwiftUI

struct StartView: View {
    
    @State var bigWord = ""
    @State var player1 = ""
    @State var player2 = ""
    
    @State var isShoweGame = false
    
    var body: some View {
        
        
        VStack{
            
            TitleText(text: "Words Game")
            
            WordsTextField(word: $bigWord, placeHolder: "Введите большое слово")
                .padding(20)
                .padding(.top, 32)
            
            WordsTextField(word: $player1, placeHolder: "Игрок 1")
                .padding(.horizontal, 20)
            
            WordsTextField(word: $player2, placeHolder: "Игрок 2")
                .padding(.horizontal, 20)
            
            Button{
                isShoweGame.toggle()
            }label: {
                Text("Старт")
                    .font(.custom("AvenirNext-Bold", size:  30))
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 64)
                    .background(Color("FirstPlayer"))
                    .cornerRadius(100)
                    .padding(.top, 20)
            }
            
        }.background(Image("Background"))
            .fullScreenCover(isPresented: $isShoweGame) {
                GameView()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
