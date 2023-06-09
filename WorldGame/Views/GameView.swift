//
//  GameView.swift
//  WorldGame
//
//  Created by  валера on 15.04.2023.
//

import SwiftUI

struct GameView: View {
    
    @State private var word = ""
    
    var body: some View {
        
        VStack(spacing: 16){
            HStack {
                Button {
                    print("Quit")
                } label: {
                    Text("Выход")
                        .padding(6)
                        .padding(.horizontal)
                        .background(Color("Orange"))
                        .cornerRadius(100)
                        .padding(6)
                        .foregroundColor(.white)
                        .font(.custom("AvenirNext-Bold", size: 18))
                }
                Spacer()
            }
            
            Text("Магнитотерапия")
                .font(.custom("AvenirNext-Bold", size: 36))
                .foregroundColor(.white)
            
            HStack(spacing: 12){
                
                VStack{
                    Text("0")
                        .font(.custom("AvenirNext-Bold", size: 60))
                        .foregroundColor(.white)
                    Text("Вася")
                        .font(.custom("AvenirNext-Bold", size: 24))
                        .foregroundColor(.white)
                    
                }
                    .padding(20)
                    .frame(width: screen.width / 2.2,
                           height: screen.width / 2.2)
                    .background(Color("FirstPlayer"))
                    .cornerRadius(40)
                    .shadow(color: .red, radius: 4)
                
                
                
                VStack{
                    Text("0")
                        .font(.custom("AvenirNext-Bold", size: 60))
                        .foregroundColor(.white)
                    Text("Петя")
                        .font(.custom("AvenirNext-Bold", size: 24))
                        .foregroundColor(.white)
                    
                }
                    .padding(20)
                    .frame(width: screen.width / 2.2,
                           height: screen.width / 2.2)
                    .background(Color("SecondPlayer"))
                    .cornerRadius(40)
                    .shadow(color: .purple,  radius: 4)
                 
            }
            
            WordsTextField(word: $word, placeHolder: "Ваше слово...")
                .padding(.horizontal)
            
            Button {
                print("Ready!")
                self.word = ""
            } label: {
                Text("Готово!")
                    .padding()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .background(Color("Orange"))
                    .cornerRadius(100)
                    .font(.custom("AvenirNext-Bold", size: 26))
                    .padding(.horizontal)
            }

            List{
                
            }.listStyle(.plain)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }.background(Image("Background"))
        
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
