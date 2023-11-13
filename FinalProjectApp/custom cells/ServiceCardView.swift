//
//  ServiceCardView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 11/13/23.
//

import Foundation
import SwiftUI

struct ServiceCardView: View {
    var body: some View {
        VStack {
            Image("dashboardLogExample")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .shadow(radius: 5)
            
           /* Text("Card Title")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Text("Card Description goes here.")
                .foregroundColor(.secondary)
                .padding()*/
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding()
    }
}
