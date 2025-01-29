//
//  Cart.swift
//  DeadEye
//
//  Created by Daniel Jauregui on 1/28/25.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager


    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(cartManager.cartItems) { coffee in
                        HStack {
                            Text(coffee.name)
                            Spacer()
                            Text(String(format: "$%.2f", coffee.price))
                        }
                    }
                }

                Text("Total: \(String(format: "$%.2f", cartManager.totalPrice()))")
                    .font(.headline)
                    .padding()

                Button(action: {
                    print("Proceed to checkout")
                }) {
                    Text("Checkout")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("Cart")
        }
    }
}
#Preview {
    CartView()
        .environmentObject(CartManager()) 
}

