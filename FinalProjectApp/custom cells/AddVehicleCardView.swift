//
//  AddVehicleCardView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 11/26/23.
//

import Foundation
import SwiftUI

struct AddVehicleCardView: View {
    var body: some View {
        VStack {
            Image("AddVehicle")
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
