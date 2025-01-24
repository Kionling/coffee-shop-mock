//
//  Coffee.swift
//  DeadEye
//
//  Created by Daniel Jauregui on 1/23/25.
//

import Foundation

struct Coffee: Identifiable{
    let id = UUID()
    let name: String
    let description: String
    let price: Double
}
