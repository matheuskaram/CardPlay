//
//  Cards.swift
//  CardPlay
//
//  Created by Matheus Westphalen on 6/7/20.
//  Copyright © 2020 Matheus Westphalen. All rights reserved.
//

import Foundation
class DeckOfCards {
    
    struct Cards {
        
        var m_rank: Rank
        var m_suit: Suit
        var m_image: String
        
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
    }
    
    static func generateDeck() -> [Cards] {
        
        var deckOfCards: Array = [Cards]()
        var cardImage: String = ""
        let highestRank = Cards.Rank.thirteen.rawValue
        let suits: Array = [Cards.Suit.clubs.rawValue, Cards.Suit.diamonds.rawValue, Cards.Suit.hearts.rawValue, Cards.Suit.spades.rawValue]
        
        for rank in 1...highestRank {
            for suit in suits {
                let _rank = Cards.Rank.init(rawValue: rank)
                cardImage.append("\rank")
                let _suit = Cards.Suit.init(rawValue: suit)
                cardImage.append(suit)
                let _card = Cards(m_rank: _rank!, m_suit: _suit!, m_image: cardImage)
                deckOfCards.append(_card)
                cardImage.removeAll()
            }
        }
        
        return deckOfCards
    }
    
    func shuffleDeck(deck: [Cards]) -> [Cards]{
        var Deck = deck
        Deck.shuffle()
        
//        for cards in Deck {
//
//            var card: Cards = Deck[0]
//            var randIndex = Int.random(in: 1...52)
//            Deck[0] = Deck[randIndex]
//            Deck[randIndex] = card
//        }
        
        return Deck
    }
}


