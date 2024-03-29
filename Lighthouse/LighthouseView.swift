//
//  LighthouseView.swift
//  Lighthouse
//
//  Created by Tia M on 3/18/24.
//

import SwiftUI

struct LighthouseView: View {
    @State private var lightColor: Color = .brightSun
    
    let animation: Animation
    
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            // MARK: Lighthouse
            Path { path in
                path.move(to: CGPoint(x: width * 0.75, y: height * 0.27))
                path.addLine(to: CGPoint(x: width * 0.75, y: height * 0.25))
            }
            .stroke(
                Color.black,
                style: StrokeStyle(lineWidth: 2, lineCap: .round)
            )
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.69, y: height * 0.37))
                path.addLine(to: CGPoint(x: width * 0.81, y: height * 0.37))
                path.addLine(to: CGPoint(x: width * 0.8, y: height * 0.31))
                path.addLine(to: CGPoint(x: width * 0.7, y: height * 0.31))
            }
            .fill(.sand)
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.69, y: height * 0.43))
                path.addLine(to: CGPoint(x: width * 0.81, y: height * 0.43))
                path.addLine(to: CGPoint(x: width * 0.81, y: height * 0.37))
                path.addLine(to: CGPoint(x: width * 0.69, y: height * 0.37))
            }
            .fill(.reddish)
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.68, y: height * 0.48))
                path.addLine(to: CGPoint(x: width * 0.82, y: height * 0.48))
                path.addLine(to: CGPoint(x: width * 0.81, y: height * 0.43))
                path.addLine(to: CGPoint(x: width * 0.69, y: height * 0.43))
            }
            .fill(.sand)
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.67, y: height * 0.53))
                path.addLine(to: CGPoint(x: width * 0.83, y: height * 0.53))
                path.addLine(to: CGPoint(x: width * 0.82, y: height * 0.48))
                path.addLine(to: CGPoint(x: width * 0.68, y: height * 0.48))
            }
            .fill(.reddish)
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.65, y: height * 0.65))
                path.addLine(to: CGPoint(x: width * 0.85, y: height * 0.65))
                path.addLine(to: CGPoint(x: width * 0.83, y: height * 0.53))
                path.addLine(to: CGPoint(x: width * 0.67, y: height * 0.53))
            }
            .fill(.sand)
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.8, y: height * 0.31))
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.7, y: height * 0.31),
                    control: CGPoint(x: width * 0.75, y: height * 0.23))
            }
            .fill(lightColor)
            .onAppear {
                withAnimation(animation) {
                    lightColor = .light
                }
            }
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.73, y: height * 0.27))
                path.addLine(to: CGPoint(x: width * 0.77, y: height * 0.27))
            }
            .stroke(
                Color.reddish,
                style: StrokeStyle(lineWidth: 7, lineCap: .round)
            )
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.7, y: height * 0.31))
                path.addLine(to: CGPoint(x: width * 0.8, y: height * 0.31))
            }
            .stroke(
                Color.reddish,
                style: StrokeStyle(lineWidth: 10, lineCap: .round)
            )
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.69, y: height * 0.6))
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.75, y: height * 0.6),
                    control: CGPoint(x: width * 0.72, y: height * 0.5))
            }
            .fill(.reddish)
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.71, y: height * 0.36))
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.75, y: height * 0.36),
                    control: CGPoint(x: width * 0.73, y: height * 0.3))
            }
            .fill(.reddish)
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.71, y: height * 0.47))
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.75, y: height * 0.47),
                    control: CGPoint(x: width * 0.73, y: height * 0.41))
            }
            .fill(.reddish)
            
            // MARK: Ground
            Path { path in
                path.move(to: CGPoint(x: width * 0.55, y: height * 0.65))
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.8, y: height * 0.6),
                    control: CGPoint(x: width * 0.7, y: height * 0.57)
                )
                path.addQuadCurve(
                    to: CGPoint(x: width, y: height * 0.65),
                    control: CGPoint(x: width, y: height * 0.57)
                )
            }
            .fill(.navy)
        }
    }
}

#Preview {
    LighthouseView(animation: Animation.easeInOut(duration: 6).repeatForever(autoreverses: true))
}

