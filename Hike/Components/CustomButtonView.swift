//
//  CustomButtonView.swift
//  Hike
//
//  Created by Paul Onawola on 08/05/2024.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [.white, .greenLight, .greenMedium], startPoint: .top, endPoint: .bottom)
                )
                .stroke(
                    LinearGradient(
                        colors: [.grayLight, .grayMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    ),
                    lineWidth: 4
                )
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                        colors: [.grayLight, .grayMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
        }
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
