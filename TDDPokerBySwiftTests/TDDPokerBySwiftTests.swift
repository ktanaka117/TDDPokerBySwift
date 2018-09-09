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
    func testCardNotation() {
        var card: Card
        
        card = Card(rank: .three, suit: .heart)
        XCTAssertEqual(card.notation, "3♥")
        
        card = Card(rank: .jack, suit: .spade)
        XCTAssertEqual(card.notation, "J♠")
    }
    
    func testHasSameSuit() {
        var card1: Card
        var card2: Card
        
        card1 = Card(rank: .ace, suit: .heart)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertTrue(card1.hasSameSuit(card2))
        
        card1 = Card(rank: .ace, suit: .spade)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertFalse(card1.hasSameSuit(card2))
    }
    
    func testHasSameRank() {
        var card1: Card
        var card2: Card
        
        card1 = Card(rank: .two, suit: .spade)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertTrue(card1.hasSameRank(card2))
        
        card1 = Card(rank: .ace, suit: .spade)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertFalse(card1.hasSameRank(card2))
    }
    
    func testCardEqual() {
        XCTAssertEqual(
            Card(rank: .jack, suit: .club),
            Card(rank: .jack, suit: .club)
        )
        XCTAssertNotEqual(
            Card(rank: .queen, suit: .diamond),
            Card(rank: .jack, suit: .club)
        )
        XCTAssertNotEqual(
            Card(rank: .jack, suit: .diamond),
            Card(rank: .jack, suit: .club)
        )
        XCTAssertNotEqual(
            Card(rank: .queen, suit: .club),
            Card(rank: .jack, suit: .club)
        )
    }
    
    func testIsPair() {
        var card1: Card
        var card2: Card
        var hand: Hand
        
        card1 = Card(rank: .king, suit: .spade)
        card2 = Card(rank: .king, suit: .heart)
        hand = Hand(cards: [card1, card2])
        XCTAssertTrue(hand.isPair)
        
        card1 = Card(rank: .queen, suit: .spade)
        card2 = Card(rank: .king, suit: .heart)
        hand = Hand(cards: [card1, card2])
        XCTAssertFalse(hand.isPair)
    }

    func testIsFlush() {
        var card1: Card
        var card2: Card
        var hand: Hand

        card1 = Card(rank: .ace, suit: .heart)
        card2 = Card(rank: .queen, suit: .heart)
        hand = Hand(cards: [card1, card2])
        XCTAssertTrue(hand.isFlush)

        card1 = Card(rank: .ace, suit: .spade)
        card2 = Card(rank: .queen, suit: .heart)
        hand = Hand(cards: [card1, card2])
        XCTAssertFalse(hand.isFlush)
    }
}
