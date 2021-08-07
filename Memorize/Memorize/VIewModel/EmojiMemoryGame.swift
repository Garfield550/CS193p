//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Garfield Lee on 8/7/21.
//

import SwiftUI

class EmojiMemoryGame {
    private static let emojis = ["😀", "😃", "😄", "😁", "😆", "😅", "😂", "🤣",
                                 "🥲", "☺️", "😊", "😇", "🙂", "🙃", "😉", "😌",
                                 "😍", "🥰", "😘", "😗", "😙", "😚", "😋", "😛",
                                 "😝", "😜", "🤪", "🤨", "🧐", "🤓", "😎", "🥸",
                                 "🤩", "🥳", "😏", "😒", "😞", "😔", "😟", "😕",
                                 "🙁", "☹️", "😣", "😖", "😫", "😩", "🥺", "😢" ]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { index in emojis[index] }
    }
    
    private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
