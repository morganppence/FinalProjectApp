//
//  DashboardLogCardView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 11/13/23.
//

import Foundation
import SwiftUI

struct DashboardLogCardView: View {
    var body: some View {
        VStack {
            Image("DashboardLogExample")
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
