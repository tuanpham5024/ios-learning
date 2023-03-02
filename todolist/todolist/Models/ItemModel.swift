//
//  ItemModel.swift
//  Todolist
//
//  Created by Tuấn Phạm on 01/03/2023.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    var id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
    
    init(title: String, isCompleted: Bool) {
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(title: title, isCompleted: !isCompleted)
    }
    
}
