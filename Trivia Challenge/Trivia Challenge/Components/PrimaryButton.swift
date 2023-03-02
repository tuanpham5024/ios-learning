//
//  PrimaryButton.swift
//  Trivia Challenge
//
//  Created by Tuấn Phạm on 26/02/2023.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = Color("AccentColor")
    
    var body: some View {
        Text(text).foregroundColor(.white).padding().padding(.horizontal).background(background).cornerRadius(30).shadow(radius: 10)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "NEXT")
    }
}
