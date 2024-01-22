//
//  TitleModifier.swift
//  HonymoonUI
//
//  Created by Daniel Washington Ignacio on 21/01/24.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
          .font(.largeTitle)
          .foregroundColor(.pink)
    }
}
