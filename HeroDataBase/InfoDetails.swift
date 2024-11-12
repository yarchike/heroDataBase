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

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                post.image
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 10))

                Text(post.name)
                    .font(.largeTitle)
                    .bold()

                Text(post.race)
                    .font(.body)
                    .foregroundColor(.secondary)

                Spacer()
            }
            .padding()
        }
        .navigationTitle(post.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
