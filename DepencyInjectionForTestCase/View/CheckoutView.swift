//
//  CheckoutView.swift
//  DepencyInjectionForTestCase
//
//  Created by Pradeep's Macbook on 10/08/21.
//

import SwiftUI

struct CheckoutView: View {
    
    var checkoutViewModel: CheckoutViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Your Cart")
                            .font(.system(size: 18))
                        Text("2 items")
                            .padding(4)
                            .background(Color.yellow)
                        Spacer()
                    }
                    .padding()
                }
                .navigationTitle("Shopping Cart")
                .navigationBarTitleDisplayMode(.inline)
                
                Divider()
                
                HStack {
                    Text("The Guitar Shop")
                        .font(.system(size: 22))
                        .fontWeight(.semibold)
                    Spacer()
                    Image(systemName: "info.circle")
                        .font(.headline)
                }
                .padding()
                
                List {
                    ForEach(cartData) { data in
                        HStack {
                            Image(data.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                            VStack(alignment: .leading, spacing: 10) {
                                Text(data.title)
                                    .font(.headline)
                                Text(data.price)
                                    .font(.callout)
                                    .foregroundColor(Color.yellow)
                                Text(data.emi)
                                    .font(.subheadline)
                            }
                        }
                    }
                }

                
                VStack(alignment:.leading, spacing: 8) {
                    HStack {
                        Text("Sub Total")
                            .font(.headline)
                        Spacer()
                        Text("$8,90,760")
                    }
                    HStack {
                        Text("GST")
                            .font(.headline)
                        Spacer()
                        Text("$4,298")
                    }
                    HStack {
                        Text("Total")
                            .font(.headline)
                        Spacer()
                        Text("$10,90,760")
                    }
                    
                }
                .padding()
                
                Divider()
                
                VStack {
                    HStack {
                        Text("$8,90,890")
                            .font(.system(size: 22))
                            .fontWeight(.semibold)
                        Spacer()
                        Button(action: {
                            checkoutViewModel.makePayment()
                        }) {
                            Text("Secure Checkout")
                                .padding()
                                .background(Color.yellow)
                                .cornerRadius(4)
                        }
                    }
                    .padding()
                }
            }
            
        }
        
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(checkoutViewModel: CheckoutViewModel(cart: Cart()))
    }
}
