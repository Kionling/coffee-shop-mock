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
        NavigationView {
            List(viewModel.menu) { coffee in
                VStack(alignment: .leading) {
                    Text(coffee.name)
                        .font(.headline)
                    Text(coffee.description)
                        .font(.subheadline)
                    Text("$\(coffee.price, specifier: "%.2f")")
                        .font(.footnote)
                }
                .padding()
            }
            .navigationTitle("Coffee Menu")
        }
    }
}

