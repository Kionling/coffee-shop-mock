//
//  DeadEyeApp.swift
//  DeadEye
//
//  Created by Daniel Jauregui on 1/23/25.
//

import SwiftUI

@main
struct DeadEyeApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject private var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            OnOpen()
                .environmentObject(cartManager)
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return .portrait
    }
}
