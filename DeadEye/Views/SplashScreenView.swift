//
//  SplashScreenView.swift
//  DeadEye
//
//  Created by Daniel Jauregui on 1/23/25.
//

import SwiftUI



struct ScreenSplashView: View {
    @State private var isActive = false
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack {
                Image(systemName: "cup.and.saucer.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("DeadEye")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
        }
    }
}


#Preview {
    ScreenSplashView()
}
