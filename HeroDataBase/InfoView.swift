//
//  InfoView.swift
//  HeroDataBase
//
//  Created by Ярослав  Мартынов on 12.11.2024.
//

import Foundation
import SwiftUI



struct InfoView: View {
    var body: some View {
        NavigationView {
            List(postsData) { post in
                NavigationLink(destination: InfoDetails(post: post)) {
                    InfoRow(post: post)
                }
            }
            .navigationTitle("Hero Base")
        }
    }
}


#Preview {
    InfoView()
}
