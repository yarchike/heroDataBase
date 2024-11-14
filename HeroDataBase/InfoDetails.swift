//
//  InfoDetails.swift
//  HeroDataBase
//
//  Created by Ярослав  Мартынов on 12.11.2024.
//

import Foundation
import SwiftUI


struct InfoDetails: View {
    let post: Post
    @State private var imageLoaded = false
    @State private var isFavorite = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                post.image
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .opacity(imageLoaded ? 1 : 0)
                    .onAppear {
                        withAnimation(.easeIn(duration: 0.5)) {
                            imageLoaded = true
                        }
                    }

                Text(post.name)
                    .font(.largeTitle)
                    .bold()

                Text(post.race)
                    .font(.body)
                    .foregroundColor(.secondary)

                Button(action: {
                    isFavorite.toggle()
                }) {
                    HStack {
                        Image(systemName: isFavorite ? "star.fill" : "star")
                            .foregroundColor(isFavorite ? .yellow : .gray)
                        Text(isFavorite ? "В избранном" : "Добавить в избранное")
                    }
                }
                .padding(.top)

                Spacer()
            }
            .padding()
        }
        .navigationTitle(post.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

