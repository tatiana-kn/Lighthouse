//
//  BoatView.swift
//  Lighthouse
//
//  Created by Tia M on 3/19/24.
//

import SwiftUI

struct BoatView: View {
    @State private var boatOffset: CGFloat = 0
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            Path { path in
                path.move(to: CGPoint(x: width * 0.1, y: height * 0.75))
                path.addLine(to: CGPoint(x: width * 0.3, y: height * 0.75))
                path.addLine(to: CGPoint(x: width * 0.34, y: height * 0.72))
                path.addLine(to: CGPoint(x: width * 0.08, y: height * 0.72))
            }
            Path { path in
                path.move(to: CGPoint(x: width * 0.2, y: height * 0.72))
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.2, y: height * 0.55),
                    control: CGPoint(x: width * 0.44, y: height * 0.7))
            }
            Path { path in
                path.move(to: CGPoint(x: width * 0.195, y: height * 0.72))
                path.addLine(to: CGPoint(x: width * 0.195, y: height * 0.53))
                path.addLine(to: CGPoint(x: width * 0.08, y: height * 0.7))
            }
        }
        .foregroundColor(.navy)
        .offset(x: boatOffset, y: boatOffset)
        .onAppear {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                boatOffset = 9
            }
        }
    }
}

#Preview {
    BoatView()
}
