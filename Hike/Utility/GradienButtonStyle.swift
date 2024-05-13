//
//  GradienButtonStyle.swift
//  Hike
//
//  Created by Paul Onawola on 08/05/2024.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                LinearGradient(
                    colors: [.grayMedium, .grayLight],
                    startPoint: .top,
                    endPoint: .bottom
                )
                
                :
                    
                    LinearGradient(
                        colors: [.grayLight, .grayMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    )
            )
            .clipShape(RoundedRectangle(cornerRadius: 40))
    }
}
