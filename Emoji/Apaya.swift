//
//  Apaya.swift
//  Emoji
//
//  Created by Farhan Yuda Pahlevi on 3/3/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import Foundation

class Apaya{
    var cards = [Card]()
    var currentFaceUpCardIndex: Int?
    
    init(numberOfCards: Int){
        for _ in 0..<numberOfCards{
            let card = Card()
            cards += [card,card]
        }
    }
    
    func chooseCard(at index:Int) {
        if !cards[index].isMatched {
            if let matchedIndex = currentFaceUpCardIndex, matchedIndex != index {
                
                if matchedIndex != index {
                    if cards[matchedIndex].identifier == cards[index].identifier{
                        cards[matchedIndex].isMatched = true
                        cards[matchedIndex].isMatched = true
                    }
                }
                cards[index].isFaceUp = true
                currentFaceUpCardIndex = nil
            }else{
                //if third card action
                for flippedDownIndex in cards.indices{
                    cards[flippedDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                currentFaceUpCardIndex = index
            }
        }
    }
}
