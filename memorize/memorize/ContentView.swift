//
//  ContentView.swift
//  memorize
//
//  Created by ynfMac on 2020/5/28.
//  Copyright © 2020 ynfMac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
        
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        
        ZStack{
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10).fill(Color.orange)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
