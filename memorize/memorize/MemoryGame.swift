//
//  MemoryGame.swift
//  memorize
//
//  Created by ynfMac on 2020/6/29.
//  Copyright © 2020 ynfMac. All rights reserved.
//

import Foundation

struct MemoryGame<cardContent> {
    var cards: Array<Card>
    
    init(numberOfPairOfCards:Int,cardContentFactory: (Int) -> cardContent) {
        cards = [Card]()
        for pairIndex in 0..<numberOfPairOfCards{
            let content = cardContentFactory(pairIndex)
            cards.append( Card(content: content ,id: pairIndex*2) )
            cards.append( Card(content: content , id: pairIndex*2+1) )
        }
        cards.shuffle()
    }
    
    func choose(card: Card){
        print("card chosen: \(card)")
    }
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: cardContent
        
        var id: Int
    }
}
