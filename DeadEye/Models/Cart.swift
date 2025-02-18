import Foundation

class CartManager: ObservableObject {
    @Published var cartItems: [Coffee] = []

    func addToCart(_ coffee: Coffee) {
        if let index = cartItems.firstIndex(where: { $0.id == coffee.id }) {
            cartItems[index].quantity += 1
        } else {
            cartItems.append(coffee)
        }
    }

    func removeFromCart(_ coffee: Coffee) {
        cartItems.removeAll { $0.id == coffee.id }
    }

    func updateQuantity(for coffee: Coffee, to newQuantity: Int) {
        if let index = cartItems.firstIndex(where: { $0.id == coffee.id }) {
            if newQuantity > 0 {
                cartItems[index].quantity = newQuantity
            } else {
                removeFromCart(coffee)
            }
        }
    }

    func totalPrice() -> Double {
        cartItems.reduce(0) { $0 + ($1.price * Double($1.quantity)) }
    }
    
    func checkOut() {
        print("You are now checking out...")
        if cartItems[Coffee] > 4 {
            print("You've exceeeded quantity. ")
        }
    }
}
