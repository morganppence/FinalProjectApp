//
//  ServiceMapCardView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 12/17/23.
//

import Foundation
import SwiftUI

struct ServiceMapCardView: View {
    var body: some View {
        VStack {
            Image("ServiceMap")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .shadow(radius: 5)
            
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding()
    }
}
