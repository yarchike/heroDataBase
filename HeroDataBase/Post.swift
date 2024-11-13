//
//  Post.swift
//  HeroDataBase
//
//  Created by Ярослав  Мартынов on 12.11.2024.
//

import Foundation
import SwiftUI

struct Post: Identifiable{
    let id = UUID()
    let name: String
    let race: String
    let image: Image
}
