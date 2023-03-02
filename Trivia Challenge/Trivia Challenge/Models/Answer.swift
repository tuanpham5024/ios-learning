//
//  Answer.swift
//  Trivia Challenge
//
//  Created by Tuấn Phạm on 26/02/2023.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID() // Setting the UUID ourselves inside of the model, because API doesn't return a unique ID for each answer
    var text: AttributedString
    var isCorrect: Bool
}
