//
//  QuestionModel.swift
//  QuizApp
//
//  Created by Pham Anh Tuan on 24/02/2023.
//

import Foundation

struct DataModel: Codable {
    var data:QuestionModel?
}

struct QuestionModel: Codable {
    var questions: [Questions]?
}
    
struct Questions: Codable {
    var correct_answer: String?
    var option_1: String?
    var option_2: String?
    var option_3: String?
    var option_4: String?
    var question: String?
}
