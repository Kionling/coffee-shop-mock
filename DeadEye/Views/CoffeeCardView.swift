//
//  CoffeeCardView.swift
//  DeadEye
//
//  Created by Daniel Jauregui on 1/25/25.
//

import SwiftUI


struct CoffeeCardView: View {
    let coffee: Coffee
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ZStack {
            Color.white // Background color for each card
                .cornerRadius(20)
                .shadow(radius: 5)
            
            VStack(spacing: 10) {
                Image(systemName: "cup.and.saucer.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .cornerRadius(10)
                    
                
                Text(coffee.name)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(coffee.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                
                Text("$\(coffee.price, specifier: "%.2f")")
                    .font(.headline)
                
                Button(action: {
                    cartManager.addToCart(coffee)
                }) {
                    Text("Add to Cart")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .frame(width: 300, height: 470) 
    }
}

#Preview {
    let mockData = CartManager()
    mockData.cartItems = [
            Coffee(name: "Cappuccino", description: "Rich espresso with steamed milk.", price: 4.99, quantity: 1)
        ]
    return CartView()
        .environmentObject(mockData)
}


