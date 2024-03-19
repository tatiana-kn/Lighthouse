//
//  NatureView.swift
//  Lighthouse
//
//  Created by Tia M on 3/19/24.
//

import SwiftUI

struct NatureView: View {
    @State private var sunColor: [Color] = [.sand, .butter]
    @State private var sunOffset: CGFloat = 0
    @State private var cloudOffset: CGFloat = 0
    @State private var waterColor: [Color] = [.reddish, .darkWater]
    
    let animation: Animation
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            // MARK: Sun
            Circle()
                .fill(Gradient(colors: sunColor))
                .frame(width: width * 0.45)
                .position(x: width * 0.4, y: height * 0.75)
                .offset(y: sunOffset)
                .onAppear {
                    withAnimation(animation) {
                        sunColor = [.butter, .pinky]
                        sunOffset = -100
                    }
                }
            
            // MARK: Clouds
            CloudView(cloudOffset: $cloudOffset, animation: animation)
                .offset(x: cloudOffset - 40, y: -60)
            
            CloudView(cloudOffset: $cloudOffset, animation: animation)
                .offset(x: 180 - cloudOffset, y: -220)
                .scaleEffect(0.8)
            
            CloudView(cloudOffset: $cloudOffset, animation: animation)
                .offset(x: -cloudOffset - 140, y: 35)
                .scaleEffect(0.7)
            
            // MARK: Water
            Path { path in
                path.move(to: CGPoint(x: 0, y: height * 0.65))
                path.addLine(to: CGPoint(x: width, y: height * 0.65))
                path.addLine(to: CGPoint(x: width, y: height * 1.1))
                path.addLine(to: CGPoint(x: 0, y: height * 1.1))
            }
            .fill(
                LinearGradient(
                    colors: waterColor,
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .onAppear {
                withAnimation(animation) {
                    waterColor = [.pinky, .sky]
                }
            }
        }
    }
}

#Preview {
    NatureView(animation: Animation.easeInOut(duration: 8).repeatForever(autoreverses: true))
}

struct CloudView: View {
    @Binding var cloudOffset: CGFloat
    
    let animation: Animation
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.29, y: height * 0.29))
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.34, y: height * 0.255),
                    control: CGPoint(x: width * 0.27, y: height * 0.26)
                )
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.5, y: height * 0.26),
                    control: CGPoint(x: width * 0.41, y: height * 0.21)
                )
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.54, y: height * 0.29),
                    control: CGPoint(x: width * 0.56, y: height * 0.26)
                )
            }
            .fill(.light)
            .onAppear {
                withAnimation(animation) {
                    cloudOffset = 35
                }
            }
        }
    }
}
