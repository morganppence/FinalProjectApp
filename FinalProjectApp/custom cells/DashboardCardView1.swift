//
//  DashboardCardView1.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 12/13/23.
//

import Foundation
import SwiftUI

struct DashboardCardView1: View {
    var body: some View {
        VStack {
            CardView7(carTitle: "Your 2017 Toyota 4Runner", imageName: "2017_toyota_4runner", text: "Access your dashboard information here.")
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding()
    }
}

struct CardView7: View {
    var carTitle: String
    var imageName: String
    var text: String

    var body: some View {
        VStack {
            Text(carTitle)
                .fontWeight(.bold)
            HStack{
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                    .cornerRadius(10)

                Text(text)
                    .padding()
                    .multilineTextAlignment(.center)

            }
            Image(systemName: "arrow.forward.circle")
                .frame(maxWidth: .infinity, alignment: .trailing)

        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        
    }
}

struct DashboardCardView1_Previews: PreviewProvider {
    static var previews: some View {
        DashboardCardView1()
    }
}
