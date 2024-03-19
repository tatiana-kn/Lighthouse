//
//  LighthouseView.swift
//  Lighthouse
//
//  Created by Tia M on 3/18/24.
//

import SwiftUI

struct LighthouseView: View {
    @State private var circleColor: Color = .yellow
    @State private var circleOffset: CGFloat = 0
    @State private var boatOffset: CGFloat = 0
    @State private var cloudOffset: CGFloat = 0
    @State private var waterColor: Color = .blue
    
//    let animation = Animation.easeIn(duration: 4).repeatForever(autoreverses: true)
    
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            // Sun
            Circle()
                .fill(circleColor)
                .frame(width: width * 0.45)
                .position(x: width * 0.4, y: height * 0.75)
                .offset(y: circleOffset)
                .onAppear {
                    withAnimation(.easeInOut(duration: 8).repeatForever(autoreverses: true)) {
                        circleColor = .orange
                        circleOffset = -100
                    }
                }
            
            // Lighthouse
            Path { path in
                path.move(to: CGPoint(x: width * 0.69, y: height * 0.4))
                path.addLine(to: CGPoint(x: width * 0.81, y: height * 0.4))
                path.addLine(to: CGPoint(x: width * 0.8, y: height * 0.31))
                path.addLine(to: CGPoint(x: width * 0.7, y: height * 0.31))
            }
            .fill(Color(red: 0.7, green: 0.7, blue: 0.7))
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.67, y: height * 0.5))
                path.addLine(to: CGPoint(x: width * 0.83, y: height * 0.5))
                path.addLine(to: CGPoint(x: width * 0.81, y: height * 0.4))
                path.addLine(to: CGPoint(x: width * 0.69, y: height * 0.4))
            }
            .fill(Color(.red))
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.65, y: height * 0.65))
                path.addLine(to: CGPoint(x: width * 0.85, y: height * 0.65))
                path.addLine(to: CGPoint(x: width * 0.83, y: height * 0.5))
                path.addLine(to: CGPoint(x: width * 0.67, y: height * 0.5))
            }
            .fill(Color(red: 0.7, green: 0.7, blue: 0.7))
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.8, y: height * 0.31))
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.7, y: height * 0.31),
                    control: CGPoint(x: width * 0.75, y: height * 0.23)
                )
            }
            .fill(.yellow)
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.7, y: height * 0.31))
                path.addLine(to: CGPoint(x: width * 0.8, y: height * 0.31))
            }
            .stroke(
                Color.red,
                style: StrokeStyle(lineWidth: 10, lineCap: .round)
            )
            
            // Ground
            Path { path in
                path.move(to: CGPoint(x: width * 0.55, y: height * 0.65))
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.8, y: height * 0.6),
                    control: CGPoint(x: width * 0.7, y: height * 0.55)
                )
                path.addQuadCurve(
                    to: CGPoint(x: width, y: height * 0.65),
                    control: CGPoint(x: width, y: height * 0.55)
                )
            }
            
            // Clouds

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
            .offset(x: cloudOffset - 40, y: -60)
            .fill(.blue)
            .onAppear {
                withAnimation(.easeInOut(duration: 8).repeatForever(autoreverses: true)) {
                    cloudOffset = 30
                }
            }
            
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
            .offset(x: 180 - cloudOffset, y: -220)
            .fill(.blue)
            .scaleEffect(0.8)
            .onAppear {
                withAnimation(.easeInOut(duration: 8).repeatForever(autoreverses: true)) {
                    cloudOffset = 30
                }
            }
            
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
            .offset(x: -cloudOffset - 140, y: 35)
            .fill(.blue)
            .scaleEffect(0.7)
            .onAppear {
                withAnimation(.easeInOut(duration: 8).repeatForever(autoreverses: true)) {
                    cloudOffset = 30
                }
            }
            
            // Water
            Path { path in
                path.move(to: CGPoint(x: 0, y: height * 0.65))
                path.addLine(to: CGPoint(x: width, y: height * 0.65))
                path.addLine(to: CGPoint(x: width, y: height * 1.1))
                path.addLine(to: CGPoint(x: 0, y: height * 1.1))
            }
            .fill(waterColor)
            .onAppear {
                withAnimation(.easeInOut(duration: 8).repeatForever(autoreverses: true)) {
                    waterColor = .cyan
                }
            }
            
            // Boat
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: width * 0.1, y: height * 0.75))
                    path.addLine(to: CGPoint(x: width * 0.3, y: height * 0.75))
                    path.addLine(to: CGPoint(x: width * 0.34, y: height * 0.72))
                    path.addLine(to: CGPoint(x: width * 0.08, y: height * 0.72))
                }
                
                Path { path in
                    path.move(to: CGPoint(x: width * 0.19, y: height * 0.71))
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.19, y: height * 0.57),
                        control: CGPoint(x: 0, y: height * 0.71)
                    )
                }
                
                Path { path in
                    path.move(to: CGPoint(x: width * 0.2, y: height * 0.72))
                    path.addQuadCurve(
                        to: CGPoint(x: width * 0.2, y: height * 0.62),
                        control: CGPoint(x: width * 0.34, y: height * 0.7)
                    )
                }
            }
            .offset(x: boatOffset, y: boatOffset)
            .onAppear {
                withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                    boatOffset += CGFloat.random(in: -10...10)
                }
            }
        }
        
    }
}

#Preview {
    LighthouseView()
}


//// Sun
//Path { path in
//    path.addArc(
//        center: CGPoint(x: width * 0.4, y: height * 0.65),
//        radius: width * 0.24,
//        startAngle: .degrees(0),
//        endAngle: .degrees(360),
//        clockwise: true
//    )
//}
//.fill(.yellow)

// Boat
//Path { path in
//    path.move(to: CGPoint(x: width * 0.1, y: height * 0.75))
//    path.addLine(to: CGPoint(x: width * 0.3, y: height * 0.75))
//    path.addLine(to: CGPoint(x: width * 0.34, y: height * 0.72))
//    path.addLine(to: CGPoint(x: width * 0.08, y: height * 0.72))
//}
//
//Path { path in
//    path.move(to: CGPoint(x: width * 0.19, y: height * 0.71))
//    path.addQuadCurve(
//        to: CGPoint(x: width * 0.19, y: height * 0.57),
//        control: CGPoint(x: 0, y: height * 0.71)
//    )
//}
//
//Path { path in
//    path.move(to: CGPoint(x: width * 0.2, y: height * 0.72))
//    path.addQuadCurve(
//        to: CGPoint(x: width * 0.2, y: height * 0.62),
//        control: CGPoint(x: width * 0.34, y: height * 0.7)
//    )
//}