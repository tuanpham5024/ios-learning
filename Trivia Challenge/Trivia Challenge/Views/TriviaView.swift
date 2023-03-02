//
//  TriviaView.swift
//  Trivia Challenge
//
//  Created by Tuấn Phạm on 26/02/2023.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager

        var body: some View {
            if triviaManager.reachedEnd {
                VStack(spacing: 20) {
                    Text("Trivia Game")
                        .lilacTitle()

                    Text("Congratulations, you completed the game! 🥳")
                    
                    Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                    
                    Button {
                        Task.init {
                            await triviaManager.fetchTrivia()
                        }
                    } label: {
                        PrimaryButton(text: "Play again")
                    }
                }
                .foregroundColor(Color("AccentColor"))
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
                .navigationViewStyle(StackNavigationViewStyle())
            } else {
                QuestionView()
                    .environmentObject(triviaManager)
                    .navigationViewStyle(StackNavigationViewStyle())
            }
            
        }
    
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
    }
}
