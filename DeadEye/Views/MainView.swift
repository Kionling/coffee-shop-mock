import SwiftUI

struct MainView: View {
    init() {
           // Change the background color of the tab bar
           let appearance = UITabBarAppearance()
           appearance.configureWithOpaqueBackground()
           appearance.backgroundColor = UIColor.systemGray6 // Change this to any color you prefer

           UITabBar.appearance().standardAppearance = appearance
           UITabBar.appearance().scrollEdgeAppearance = appearance
       }
    var body: some View {
        TabView {
            MenuView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "cart")
                }
            StoreLocatorView()
                .tabItem {
                    Label("Stores", systemImage: "map")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
            
        }
       
    }
}

#Preview {
    MainView()
}
