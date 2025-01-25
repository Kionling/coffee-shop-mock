//
//
//  MenuView.swift
//  DeadEye
//
//  Created by Daniel Jauregui on 1/23/25.
//

import SwiftUI

struct MenuView: View {
    @StateObject private var viewModel = MenuViewModel()
    var body: some View {
        NavigationView{
            TabView {
                ForEach(viewModel.menu) { coffee in
                    CoffeeCardView(coffee: coffee)
                }
            }
            .tabViewStyle(.page) // Carousel effect
            .indexViewStyle(.page(backgroundDisplayMode: .always)) // Dots below the carousel
            .frame(height: 400) // Adjust the carousel height
            .navigationTitle("Menu")
        }
    }
}
#Preview {
    MenuView()
}
