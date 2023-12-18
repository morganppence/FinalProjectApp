//
//  HondaBasicInfoView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 12/17/23.
//

import Foundation
import SwiftUI

struct HondaBasicInfoView: View {
    @State var isOn: Bool = false
    

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image("Honda")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                        .clipped()
                    
                    VStack(spacing: 20) {
                        CardView(title: "Card 1", content: "Engine Type and Required Fuel : Regular Unleaded V-6")
                        CardView(title: "Card 2", content: "Maximum Horsepower @ RPM : 270 @ 5600")
                        CardView(title: "Card 3", content: "Maximum Torque @ RPM : 278 @ 4400")
                        CardView(title: "Card 4", content: "Fuel Capacity / Gas Tank Size : 23")
                        CardView(title: "Card 5", content: "Brake Type : 4-Wheel Disc")
                        CardView(title: "Card 6", content: "Wheel Size (inches) : 17 x 7")
                        CardView(title: "Card 7", content: "Maxiumum Towing Capacity (pounds) : 5000")
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Your Honda Passport")
        }
    }
}

struct HondaCardView: View {
    let title: String
    let content: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {

            Text(content)
                .font(.body)
                .foregroundColor(.black)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
        }
    }
}

struct HondaBasicInfoView_Previews: PreviewProvider {
    static var previews: some View {
        HondaBasicInfoView()
    }
}
