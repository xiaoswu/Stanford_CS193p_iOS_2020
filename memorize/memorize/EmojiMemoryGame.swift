//
//  EmojMemoryGame.swift
//  memorize
//
//  Created by ynfMac on 2020/6/29.
//  Copyright © 2020 ynfMac. All rights reserved.
//

import Foundation


class EmojiMemoryGame {
    
    
    private(set) var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis:Array<String> = ["😯","🐼","🐹"]
        return MemoryGame<String>(numberOfPairOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
        
    
    // MARK -- Access to the Model
    
    var cards:Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK -- Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
