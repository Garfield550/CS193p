//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Garfield Lee on 8/7/21.
//

import SwiftUI

class EmojiMemoryGame {
    private static let emojis = ["π", "π", "π", "π", "π", "π", "π", "π€£",
                                 "π₯²", "βΊοΈ", "π", "π", "π", "π", "π", "π",
                                 "π", "π₯°", "π", "π", "π", "π", "π", "π",
                                 "π", "π", "π€ͺ", "π€¨", "π§", "π€", "π", "π₯Έ",
                                 "π€©", "π₯³", "π", "π", "π", "π", "π", "π",
                                 "π", "βΉοΈ", "π£", "π", "π«", "π©", "π₯Ί", "π’" ]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { index in emojis[index] }
    }
    
    private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
