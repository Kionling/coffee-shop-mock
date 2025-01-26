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
    init() {
        UIPageControl.appearance().isHidden = true
    }
    var body: some View {
        NavigationView{
            TabView {
                ForEach(viewModel.menu) { coffee in
                    CoffeeCardView(coffee: coffee)
                }
            }
            .tabViewStyle(.page)
            .frame(height: 500)
            .navigationTitle("Good Morning!")
        }
    }
}
#Preview {
    MenuView()
}
