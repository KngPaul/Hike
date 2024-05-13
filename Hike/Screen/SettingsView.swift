//
//  SettingsView.swift
//  Hike
//
//  Created by Paul Onawola on 10/05/2024.
//

import SwiftUI

struct SettingsView: View {
    private let alternateAppIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire"
    ]
    
    var body: some View {
        List {
            // MARK: - HEADER
            Section {
                HStack {
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [.greenLight, .greenMedium, .greenDark],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike looks gorgeous in photos but is even better once you are actually there. The hike you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! Its time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundStyle(.greenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)

            // MARK: - ICONS
            Section {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(alternateAppIcons, id: \.self) { appIcon in
                            Button {
                                UIApplication.shared.setAlternateIconName(appIcon) { error in
                                    if error != nil {
                                        print("Failed request to update app icon: \(String(describing: error?.localizedDescription))")
                                    } else {
                                        print("Success!")
                                    }
                                }
                            } label: {
                                Image("\(appIcon)-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                            }
                        .buttonStyle(.borderless)
                        }
                    }
                }
                .padding(.top, 12)
                
                Text("Choose your favourite app icon from the collection above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
            } header: {
                Text("Alternate Icons")
            }
            .listRowSeparator(.hidden)

            
            // MARK: - ABOUT
            Section {
                CustomListRowView(label: "Application", icon: "apps.iphone", content: "HIKE", tint: .blue)
                
                CustomListRowView(label: "Compatibility", icon: "info.circle", content: "iOS, iPadOS", tint: .red)
                
                CustomListRowView(label: "Technology", icon: "swift", content: "Swift", tint: .orange)
                
                CustomListRowView(label: "Version", icon: "gear", content: "1.0", tint: .purple)
                
                CustomListRowView(label: "Developer", icon: "ellipsis.curlybraces", content: "John Doe", tint: .mint)
                
                CustomListRowView(label: "designer", icon: "paintpalette", content: "John Doe", tint: .pink)
                
                CustomListRowView(label: "Website", icon: "globe", tint: .indigo, linkLabel: "Hike.com", linkDestination: "https://hikes.com")

            } header: {
                Text("About the app")
            } footer: {
                HStack {
                    Spacer()
                    
                    Text("Copyright © All right reserved.")
                    
                    Spacer()
                }
                .padding(.vertical, 8)
            }

        }
    }
}

#Preview {
    SettingsView()
}
