//
//  CustomListRowView.swift
//  Hike
//
//  Created by Paul Onawola on 10/05/2024.
//

import SwiftUI

struct CustomListRowView: View {
    @State var label: String
    @State var icon: String
    @State var content: String? = nil
    @State var tint: Color
    @State var linkLabel: String? = nil
    @State var linkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            if content != nil {
                Text(content!)
                    .foregroundStyle(.primary)
                .fontWeight(.heavy)
            } else if (linkLabel != nil && linkDestination != nil) {
                Link(linkLabel!, destination: URL(string: linkDestination!)!)
                    .foregroundStyle(.pink)
                    .fontWeight(.heavy)
            }else {
                EmptyView()
            }
            
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(tint)
                    
                    Image(systemName: icon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                
                Text(label)
                
            }
            
        }
    }
}

#Preview {
    List {
        CustomListRowView(
            label: "Application",
            icon: "apps.iphone",
            content: "HIKE",
            tint: .pink
        )
    }
}
