//
//  CartData.swift
//  DepencyInjectionForTestCase
//
//  Created by Pradeep's Macbook on 02/11/21.
//

import UIKit

struct CartData: Identifiable {
    var id = UUID().uuidString
    let title: String
    let price: String
    let emi: String
    let image: String
}

let cartData: [CartData] = [
    .init(title: "PRS, Electric Guitar, Pse, Flyod", price: "$108950", emi: "Emi starts at $ 4999", image: "guitar"),
    .init(title: "Fender, Acoustic Guitar, Tender", price: "$10789", emi: "Emi starts at $ 599", image: "guitar"),
    .init(title: "Fender, Acoustic Guitar, Tender", price: "$10789", emi: "Emi starts at $ 599", image: "guitar")
]
