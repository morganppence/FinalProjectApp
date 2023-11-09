//
//  DashboardCardView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 11/9/23.
//

import Foundation
import SwiftUI

struct DashboardCardView: View {
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
}
