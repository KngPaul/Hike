//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Paul Onawola on 10/05/2024.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { circle in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                    )
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ) {
                            isAnimating = true
                        }
                    }
            }
        }
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
    
    // MARK: - METHODS
    
    // 1. Random Coordinate
    func randomCoordinate() -> CGFloat {
        CGFloat.random(in: 0...256)
    }
    
    // 2. Random Size
    func randomSize() -> CGFloat {
        CGFloat(Int.random(in: 4...80))
    }
    
    // 3. Random Scale
    func randomScale() -> CGFloat {
        CGFloat(Double.random(in: 0.1...2))
    }
    
    // 4. Random Speed
    func randomSpeed() -> Double {
        Double.random(in: 0.05...1.0)
    }
    
    // 5. Random Delay
    func randomDelay() -> Double {
        Double.random(in: 0...2)
    }
    
}

#Preview {
    MotionAnimationView()
        .background {
            Circle()
                .fill(.teal)
        }
}
