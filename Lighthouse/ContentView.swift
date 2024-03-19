//
//  ContentView.swift
//  Lighthouse
//
//  Created by Tia M on 3/18/24.
//

import SwiftUI

struct ContentView: View {
    @State private var skyColor: [Color] = [.sand, .darkPink]
    
    let dayAnimation = Animation.easeInOut(duration: 6).repeatForever(autoreverses: true)
    
    var body: some View {
        ZStack {
            VStack(spacing: .zero) {
                LinearGradient(
                    colors: skyColor,
                    startPoint: .bottomLeading,
                    endPoint: .topTrailing
                )
                .ignoresSafeArea()
            }
            .onAppear {
                withAnimation(dayAnimation) {
                    skyColor = [.butter, .pinky]
                }
            }
            NatureView(animation: dayAnimation)
            LighthouseView(animation: dayAnimation)
            BoatView()
        }
    }
}

#Preview {
    ContentView()
}

