//
//  TodolistApp.swift
//  Todolist
//
//  Created by Tuấn Phạm on 01/03/2023.
//

import SwiftUI

@main
struct TodolistApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
