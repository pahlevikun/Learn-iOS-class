//
//  Card.swift
//  Emoji
//
//  Created by Farhan Yuda Pahlevi on 3/3/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier:Int
    static var identifierFactory = 0
    
    init() {
        self.identifier = Card.getUniqueIdentitifier()
    }

    
    static func getUniqueIdentitifier() -> Int {
        identifierFactory+=1
        return identifierFactory
    }
}
