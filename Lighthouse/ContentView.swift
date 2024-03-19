//
//  ContentView.swift
//  Lighthouse
//
//  Created by Tia M on 3/18/24.
//

import SwiftUI

struct ContentView: View {
    @State private var skyColor: [Color] = [.sand, .darkPink]
    
    let sunriseAnimation = Animation.easeInOut(duration: 6).repeatForever(autoreverses: true)
    
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
                withAnimation(sunriseAnimation) {
                    skyColor = [.butter, .pinky]
                }
            }
            
            NatureView(animation: sunriseAnimation)
            LighthouseView()
            BoatView()
        }
    }
}

#Preview {
    ContentView()
}

