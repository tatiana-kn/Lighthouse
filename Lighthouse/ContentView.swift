//
//  ContentView.swift
//  Lighthouse
//
//  Created by Tia M on 3/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            VStack(spacing: .zero) {
                LinearGradient(
                    colors: [.purple, .blue],
                    startPoint: .bottomLeading,
                    endPoint: .topTrailing
                )
                .opacity(0.65)
                .ignoresSafeArea()
                
            }
            LighthouseView()
        }
    }
}

#Preview {
    ContentView()
}


// water gradient
//LinearGradient(
//                colors: [.blue, .cyan, .blue],
//                startPoint: .top,
//                endPoint: .bottom
//            )
//            .ignoresSafeArea()
