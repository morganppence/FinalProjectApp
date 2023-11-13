//
//  DashCardView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 11/13/23.
//

import Foundation
import SwiftUI

/*struct DashCardView: View {
    let vehicle: VehicleData
    let padding: CGFloat = 10
    
    var body: some View {
        Image(vehicle.imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .shadow(radius: 5)
        
            .overlay(alignment: .bottomTrailing, content: {
                Text(vehicle.make)
                    .bold()
                    .foregroundColor(Color.black)
                    .padding()
            })
    }
}*/

struct DashCardView: View {
    var body: some View {
        VStack {
            Image("exampleDashboard") 
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
