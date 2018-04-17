//
//  Card.swift
//  TDDPokerBySwift
//
//  Created by tanaka.kenji on 2018/04/17.
//  Copyright © 2018年 tanaka.kenji. All rights reserved.
//

import Foundation

struct Card {
    enum Suit {
        case heart
    }
    
    enum Rank {
        case three
    }
    
    let suit: Suit
    let rank: Rank
}
