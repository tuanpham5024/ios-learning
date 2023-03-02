//
//  Contribute.swift
//  Todolist
//
//  Created by Tuấn Phạm on 01/03/2023.
//

import SwiftUI
import StoreKit

struct Contribute: View {
    @StateObject var storeKit = StoreKitManager()
        
        var body: some View {
            VStack(alignment: .leading) {
                Text("Contribute for Developer")
                    .bold()
                Divider()
                ForEach(storeKit.storeProducts) {product in
                    HStack {
                        Text(product.displayName)
                        Spacer()
                        Divider()
                        Button(action: {
                            // purchase this product
                            Task { try await storeKit.purchase(product)
                            }
                        }) {
                            CourseItem(storeKit: storeKit, product: product)
                        }
                    }
                }
            }
            .padding()
        }
}

struct CourseItem: View {
    @ObservedObject var storeKit : StoreKitManager
    @State var isPurchased: Bool = false
    var product: Product
    
    var body: some View {
        VStack {
            if isPurchased {
                Text(Image(systemName: "checkmark"))
                    .bold()
                    .padding(10)
            } else {
                Text(product.displayPrice)
                    .padding(10)
            }
        }
        .onChange(of: storeKit.purchasedCourses) { course in
            Task {
                isPurchased = (try? await storeKit.isPurchased(product)) ?? false
            }
        }
    }
}

struct Contribute_Previews: PreviewProvider {
    static var previews: some View {
        Contribute()
    }
}
