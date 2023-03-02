//
//  NoItemsView.swift
//  Todolist
//
//  Created by Tuấn Phạm on 01/03/2023.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should click the add button and add a bunch of items to your todo list!")
                NavigationLink(destination: AddView(), label: {
                    Text("Add Something!!")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .multilineTextAlignment(.center)
            .padding(40)
//            .onAppear(perform: addAnimation())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

    func addAnimation() {
        
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NoItemsView()
    }
}
