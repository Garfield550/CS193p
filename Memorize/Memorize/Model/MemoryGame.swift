//
//  MemoryGame.swift
//  Memorize
//
//  Created by Garfield Lee on 8/7/21.
//

import Foundation

struct MemoryGame<CardContent> {
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        Array(0..<numberOfPairsOfCards).forEach({ pairIndex in
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        })
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
    
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card){
        
    }
}
