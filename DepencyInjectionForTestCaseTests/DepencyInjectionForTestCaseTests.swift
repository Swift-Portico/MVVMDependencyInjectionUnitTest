//
//  DepencyInjectionForTestCaseTests.swift
//  DepencyInjectionForTestCaseTests
//
//  Created by Pradeep's Macbook on 10/08/21.
//

import XCTest

@testable import DepencyInjectionForTestCase

class DepencyInjectionForTestCaseTests: XCTestCase {

    var sut: CheckoutViewModel!
    
    func testCheckoutCart() {
        // Arrange
        
        sut = CheckoutViewModel(cart: FakeCart())
        
        // Act
        
        sut.makePayment()
        
    }
}
