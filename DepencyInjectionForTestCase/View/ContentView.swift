//
//  ContentView.swift
//  DepencyInjectionForTestCase
//
//  Created by Pradeep's Macbook on 10/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CheckoutView(checkoutViewModel: CheckoutViewModel(cart: FakeCart()))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
