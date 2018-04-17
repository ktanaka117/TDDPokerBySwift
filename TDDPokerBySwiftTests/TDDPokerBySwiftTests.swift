//
//  TDDPokerBySwiftTests.swift
//  TDDPokerBySwiftTests
//
//  Created by tanaka.kenji on 2018/04/17.
//  Copyright © 2018年 tanaka.kenji. All rights reserved.
//

import XCTest
@testable import TDDPokerBySwift

class TDDPokerBySwiftTests: XCTestCase {
    func testInitializeCard() {
        var card: Card
        
        card = Card(rank: .three, suit: .heart)
        XCTAssertEqual(card.rank, .three)
        XCTAssertEqual(card.suit, .heart)
        
        card = Card(rank: .jack, suit: .spade)
        XCTAssertEqual(card.rank, .jack)
        XCTAssertEqual(card.suit, .spade)
    }
    
    func testCardNotation() {
        var card: Card
        
        card = Card(rank: .three, suit: .heart)
        XCTAssertEqual(card.notation, "3♥")
        
        card = Card(rank: .jack, suit: .spade)
        XCTAssertEqual(card.notation, "J♠")
    }
}
