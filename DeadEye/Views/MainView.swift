import SwiftUI

struct MainView: View {
    

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
        }
       
    }
}

#Preview {
    MainView()
}
