//
//  SideBarView.swift
//  VisionOsMusic
//
//  Created by WKS-MAC01 on 21/12/2023.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        List(sideMenuItems) { item in
            NavigationLink(value: item.self) {
                Label(item.title, systemImage: item.icon)
                    .foregroundStyle(.primary)
            }.navigationDestination(for: SideMenuItem.self) { _ in
                // Menu item view
            }
        }.toolbar {
            ToolbarItem(placement: .topBarLeading) {
                VStack(alignment: .leading) {
                    Text("Library")
                        .font(.largeTitle)
                    Text("All Music")
                        .foregroundStyle(.tertiary)
                }
            }
            ToolbarItem {
                Button {} label: {
                    Image(systemName: "ellipsis")
                }
                .clipShape(Circle())
            }
        }
    }
}

#Preview {
    SideBarView()
}
