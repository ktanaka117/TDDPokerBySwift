//
//  Hand.swift
//  TDDPokerBySwift
//
//  Created by tanaka.kenji on 2018/04/18.
//  Copyright © 2018年 tanaka.kenji. All rights reserved.
//

import Foundation

struct Hand {
    let cards: [Card]
    
    var isPair: Bool {
        return cards[0].rank == cards[1].rank
    }

    var isFlush: Bool {
        return cards[0].suit == cards[1].suit
    }
}
