import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(cartManager.cartItems) { coffee in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(coffee.name)
                                    .font(.headline)
                                Text(String(format: "$%.2f each", coffee.price))
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                           Spacer()
                            
                            Picker("Quantity", selection: Binding(
                                get: { coffee.quantity },
                                set: { newQuantity in
                                    cartManager.updateQuantity(for: coffee, to: newQuantity)
                                }
                            )) {
                                ForEach(1..<11, id: \.self) { quantity in
                                    Text("\(quantity)").tag(quantity)
                                }
                            }
                            .pickerStyle(MenuPickerStyle())
                            .font(.subheadline)
                            .frame(width: 60)
                            
                            Button(action: {
                                cartManager.removeFromCart(coffee)
                            }) {
                                Image(systemName: "trash")
                                    .foregroundColor(.red)
                            }
                            .buttonStyle(BorderlessButtonStyle())
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
    let mockData = CartManager()
    mockData.cartItems = [
            Coffee(name: "Cappuccino", description: "Rich espresso with steamed milk.", price: 4.99, quantity: 1)
        ]
    return CartView()
        .environmentObject(mockData)
}
