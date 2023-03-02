//
//  QuestionViewModel.swift
//  QuizApp
//
//  Created by Pham Anh Tuan on 24/02/2023.
//

import Foundation

class QuestionViewModel {
    
    var questionData:DataModel?
    private let sourcesURL = URL(string: "https://quiz-68112-default-rtdb.firebaseio.com/quiz.json")!

    func apiToGetQuestionData(completion : @escaping () -> ()) {
        
        URLSession.shared.dataTask(with: sourcesURL) { [weak self] (data, urlResponse, error) in
            if let data = data {
                
                let jsonDecoder = JSONDecoder()
                
                let empData = try! jsonDecoder.decode(DataModel.self, from: data)
                self?.questionData = empData
                print(empData)
                completion()
            }
        }.resume()
    }
}
