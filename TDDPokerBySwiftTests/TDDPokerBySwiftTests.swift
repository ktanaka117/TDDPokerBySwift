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
        
        card = Card(suit: .heart, rank: .three)
        XCTAssertEqual(card.suit, .heart)
        XCTAssertEqual(card.rank, .three)
        
        card = Card(suit: .spade, rank: .jack)
        XCTAssertEqual(card.suit, .spade)
        XCTAssertEqual(card.rank, .jack)
    }
}
