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
                    colors: [.sand, .pinky],
                    startPoint: .bottomLeading,
                    endPoint: .topTrailing
                )
                .ignoresSafeArea()
                
            }
            LighthouseView()
        }
    }
}

#Preview {
    ContentView()
}

