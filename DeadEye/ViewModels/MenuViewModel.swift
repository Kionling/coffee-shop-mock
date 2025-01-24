//
//  MenuViewModel.swift
//  DeadEye
//
//  Created by Daniel Jauregui on 1/23/25.
//
import Foundation

class MenuViewModel: ObservableObject {
    @Published var menu: [Coffee] = [
        Coffee(name: "Cappuccino", description: "Rich espresso with steamed milk.", price: 4.99),
        Coffee(name: "Latte", description: "Smooth espresso with creamy milk.", price: 5.49),
        Coffee(name: "Americano", description: "Espresso with hot water.", price: 3.99)
    ]
}
