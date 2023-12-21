//
//  AlbumsView.swift
//  VisionOsMusic
//
//  Created by WKS-MAC01 on 21/12/2023.
//

import SwiftUI

struct AlbumsView: View {
    @State private var searchText = ""
    let colums: [GridItem] = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    var body: some View {
        ScrollView {
            TextField("Search in Albums", text: $searchText)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            LazyVGrid(columns: colums, spacing: 24) {
                ForEach(albums) { album in
                    Button {} label: {
                        VStack(alignment: .leading) {
                            AsyncImage(url: URL(string: album.image)) { image in
                                image
                                    .resizable()
                                    .frame(width: 160, height: 160)
                            } placeholder: {
//                                Rectangle()
//                                    .frame(width: 160, height: 160)
                            }.aspectRatio(contentMode: .fill)
                                .scaledToFill()
                                .cornerRadius(10)

                            Text(album.title)
                                .lineLimit(1)
                            Text(album.subTitle)
                                .foregroundStyle(.tertiary)
                                .lineLimit(1)
                        }
                        .hoverEffect()
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .padding()
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                VStack(alignment: .leading) {
                    Text("Albums")
                        .font(.largeTitle)
                    Text("48 Songs")
                        .foregroundStyle(.tertiary)
                }
            }
            ToolbarItem {
                Button {} label: {
                    Image(systemName: "line.3.horizontal.decrease")
                }
                .clipShape(Circle())
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .bottomOrnament) {
                HStack {
                    Button {} label: {
                        Image(systemName: "backward.fill")
                    }

                    Button {} label: {
                        Image(systemName: "pause.fill")
                    }

                    Button {} label: {
                        Image(systemName: "forward.fill")
                    }

                    PlayingSongCardView()

                    Button {} label: {
                        Image(systemName: "quote.bubble")
                    }

                    Button {} label: {
                        Image(systemName: "list.bullet")
                    }

                    Button {} label: {
                        Image(systemName: "speaker.wave.3.fill")
                    }
                }
                .padding(.vertical)
            }
        }
    }
}

struct PlayingSongCardView: View {
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: albums[0].image)) { image in
                image.resizable()

            } placeholder: {
                Rectangle()
                    .foregroundStyle(.tertiary)
            }
            .frame(width: 50, height: 50)
            .cornerRadius(6)

            VStack(alignment: .leading) {
                Text(albums[0].title)
                    .lineLimit(1)
                Text(albums[0].artist)
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
                    .lineLimit(1)
            }
            .frame(width: 160, alignment: .leading)

            Button {} label: {
                Image(systemName: "ellipsis")
            }
            .buttonBorderShape(.circle)
        }
        .padding(.all, 8)
        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    AlbumsView()
}
