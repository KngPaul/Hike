//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Paul Onawola on 08/05/2024.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. DEPTH
            
            Color.greenDark
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .offset(y: 12)
            
            // MARK: - 2. LIGHT
            
            Color.greenLight
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .offset(y: 3)
            
            // MARK: - 1. SURFACE
            LinearGradient(
                colors: [Color.greenLight, Color.greenMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .clipShape(RoundedRectangle(cornerRadius: 40))
        }

    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
