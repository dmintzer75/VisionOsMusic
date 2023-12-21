//
//  Album.swift
//  VisionOsMusic
//
//  Created by WKS-MAC01 on 21/12/2023.
//

import Foundation
struct Album: Identifiable {
    var id = UUID()
    var title: String
    var subTitle: String
    var artist: String
    var image: String
}

let albums = [
    Album(title: "The Best of 2020", subTitle: "48 Songs", artist: "Various Artists", image: "https://images.unsplash.com/photo-1504898770365-14faca6a7320?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bXVzaWMlMjBhbGJ1bXxlbnwwfHwwfHx8MA%3D%3D"),
    Album(title: "The Best of 2019", subTitle: "48 Songs", artist: "Various Artists", image: "https://images.unsplash.com/file-1695862017053-979d119af2a6image?dpr=2&w=416&auto=format&fit=crop&q=60"),
    Album(title: "The Best of 2018", subTitle: "48 Songs", artist: "Various Artists", image: "https://images.unsplash.com/photo-1584679109597-c656b19974c9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bXVzaWMlMjBhbGJ1bXxlbnwwfHwwfHx8MA%3D%3D"),
    Album(title: "The Best of 2017", subTitle: "48 Songs", artist: "Various Artists", image: "https://images.unsplash.com/photo-1614613535308-eb5fbd3d2c17?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bXVzaWMlMjBhbGJ1bXxlbnwwfHwwfHx8MA%3D%3D"),
    Album(title: "The Best of 2016", subTitle: "48 Songs", artist: "Various Artists", image: "https://images.unsplash.com/photo-1535992165812-68d1861aa71e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG11c2ljJTIwYWxidW18ZW58MHx8MHx8fDA%3D"),
    Album(title: "The Best of 2015", subTitle: "48 Songs", artist: "Various Artists", image: "https://images.unsplash.com/photo-1601066525716-3cca33c6d4c6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fG11c2ljJTIwYWxidW18ZW58MHx8MHx8fDA%3D"),
]
