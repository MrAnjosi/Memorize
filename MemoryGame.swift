//
//  MemoryGame.swift
//  Memorize
//
//  Created by Anderson Jose on 06/08/21.
//

import Foundation


struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card){
        print("card chosed: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, carContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for parIndex in 0..<numberOfPairsOfCards {
            let content = carContentFactory(parIndex)
            
            cards.append(Card(content: content, id: parIndex*2))
            cards.append(Card(content: content, id: parIndex*2+1))
        }
    }
    
    // MARK: - como se fosse um protocolo
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
