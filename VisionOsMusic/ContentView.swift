//
//  ContentView.swift
//  VisionOsMusic
//
//  Created by WKS-MAC01 on 21/12/2023.
//

import RealityKit
import RealityKitContent
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationSplitView {
                SideBarView()
            } detail: {
                // Album View
                AlbumsView()
            }
            .tabItem { Label("Browse", systemImage: "music.note") }.tag(0)

            Text("Favorites")
                .tabItem { Label("Favorites", systemImage: "heart.fill") }.tag(1)
            
            Text("Playlist")
                .tabItem { Label("Playlist", systemImage: "play.square.stack") }.tag(1)
        }
    }
}

#Preview(windowStyle: .automatic) {
    NavigationStack {
        ContentView()
    }
}
