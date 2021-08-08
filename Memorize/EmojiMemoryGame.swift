//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Anderson Jose on 06/08/21.
//

import SwiftUI

/*
 // MARK: - function to create a card
 func createCardContet(parIndex: Int) -> String {
 return "😀"
 }
 */

class EmojiMemoryGame {
    private var game: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    //another form to set functions
    static func createMemoryGame() -> MemoryGame<String>{
        // let é uma constante
        let emojis: Array<String> = ["👻","🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { parIndex in
            emojis[parIndex]
        }
    }
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card>{
        game.cards
    }
    
    // MARK: - Intents
    
    func choose(card: MemoryGame<String>.Card){
        game.choose(card: card)
    }
}
