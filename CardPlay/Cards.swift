//
//  Cards.swift
//  CardPlay
//
//  Created by Matheus Westphalen on 6/7/20.
//  Copyright © 2020 Matheus Westphalen. All rights reserved.
//

import Foundation

struct Cards {
    
    let m_rank: Rank
    let m_suit: Suit
    
    enum Rank: Int {
        case one = 1
        case two, three, four, five, six, seven,
             eight, nine, ten, eleven, twelve, thirteen
    }
    
    enum Suit: String {
        case clubs = "C"
        case diamonds = "D"
        case hearts = "H"
        case spades = "S"
    }
    
    func generateDeck() -> [Cards] {
        
        var deckOfCards: Array = [Cards]()
        let highestRank = Cards.Rank.thirteen.rawValue
        let suits: Array = [Cards.Suit.clubs.rawValue, Cards.Suit.diamonds.rawValue, Cards.Suit.hearts.rawValue, Cards.Suit.spades.rawValue]
        
        for count in 1...highestRank {
            for suit in suits {
                let _rank = Cards.Rank.init(rawValue: count)
                let _suit = Cards.Suit.init(rawValue: suit)
                let _card = Cards(m_rank: _rank!, m_suit: _suit!)
                    deckOfCards.append(_card)
            }
        }
        
        return deckOfCards
    }

}
