//
//  HelloView.swift
//  HeroDataBase
//
//  Created by Ярослав  Мартынов on 12.11.2024.
//

import Foundation
import SwiftUI

struct HelloView: View {

    @State private var isVisible = false

      var body: some View {
          VStack {
              Image(systemName: "hand.wave")
                  .font(.largeTitle)
                  .scaleEffect(isVisible ? 1.5 : 1.0)
                  .onAppear {
                      withAnimation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
                          isVisible.toggle()
                      }
                  }
              
              Text("Добро пожаловать в ваше приложение!")
                  .font(.headline)
                  .padding()
          }
      }
    
    
    
}


#Preview {
    HelloView()
}
