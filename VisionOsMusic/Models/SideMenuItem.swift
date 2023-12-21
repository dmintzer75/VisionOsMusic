//
//  SideMenuItem.swift
//  VisionOsMusic
//
//  Created by WKS-MAC01 on 21/12/2023.
//

import Foundation
struct SideMenuItem: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let icon: String
}

let sideMenuItems = [
    SideMenuItem(title: "Recently Added", icon: "clock"),
    SideMenuItem(title: "Artists", icon: "music.mic"),
    SideMenuItem(title: "Albums", icon: "square.stack"),
    SideMenuItem(title: "Songs", icon: "music.note"),
    SideMenuItem(title: "Search", icon: "magnifyingglass"),
    SideMenuItem(title: "For You", icon: "person.crop.circle"),
]
