//
//  CheckoutViewModel.swift
//  DepencyInjectionForTestCase
//
//  Created by Pradeep's Macbook on 10/08/21.
//

import SwiftUI

// Dependency Injection

protocol CartProtocol {
    var products: [String: Double] { get set }
    func getPayableAmount() -> Double
}

struct CheckoutViewModel {
    
    var cart: CartProtocol
    
    init(cart: CartProtocol) {
        self.cart = cart
    }
    
    func makePayment() {
        
        // Do Some Web Service Request
        
        print("Amount to be paid \(cart.getPayableAmount())")
    }
}

class Cart: CartProtocol {
    
    var products: [String: Double] = ["P1": 23456, "P2": 56789]
    
    func getPayableAmount() -> Double {
        return products.keys.reduce(0) {
            $0 + products[$1]!
        }
    }
    
}

class FakeCart: CartProtocol {
    
    var products: [String : Double] = [:]
    
    func getPayableAmount() -> Double {
        return 0
    }
}
