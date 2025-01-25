//
//  OnOpen.swift
//  DeadEye
//
//  Created by Daniel Jauregui on 1/24/25.
//

import SwiftUI

struct OnOpen: View {
    @State private var isSplashActive = true // Controls the splash screen visibility

    var body: some View {
        Group {
            if isSplashActive {
                ScreenSplashView()
            } else {
                MainView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    isSplashActive = false
                }
            }
        }
    }
}
