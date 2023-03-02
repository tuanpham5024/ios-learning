//
//  Extensions.swift
//  Trivia Challenge
//
//  Created by Tuấn Phạm on 26/02/2023.
//

import Foundation
import SwiftUI

// Custom modifier to call this one-liner instead of adding three modifiers every time we create a title Text.
extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
