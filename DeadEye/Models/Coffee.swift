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
    var quantity: Int = 1
}


//
//func performApiCall() async throws -> [Coffee] {
//    let url = //Future URL link
//    let (data, _) = try await URLSession.shared.data(from: url)
//    let wrapper = try JSONDecoder().decode(CoffeeWrapper.self, from: data)
//    return wrapper.items[0]
//}
