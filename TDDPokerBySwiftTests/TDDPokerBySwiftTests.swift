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
        let card1 = Card(suit: .heart, rank: .three)
        XCTAssertEqual(card1.suit, .heart)
        XCTAssertEqual(card1.rank, .three)
        
        let card2 = Card(suit: .spade, rank: .jack)
        XCTAssertEqual(card2.suit, .spade)
        XCTAssertEqual(card2.rank, .jack)
    }
}
