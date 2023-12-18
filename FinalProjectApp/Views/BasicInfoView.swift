//
//  BasicInfoView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 10/26/23.
//

import Foundation
import SwiftUI

struct BasicInfoView: View {
    @State var isOn: Bool = false
    @Environment(Model.self) var model
    

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image(model.currentCar.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                        .clipped()
                    
    
                    
                    VStack(alignment: .leading) {
                        ForEach(model.currentCar.info, id: \.self) { info in
                            CardView(title: info, content: info)
                                //.frame(maxWidth: .infinity)
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Your " + model.currentCar.title)
        }
        .onAppear {
            print("model.currentCar.info", model.currentCar.info)
        }
    }
        
}

struct CardView: View {
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

struct BasicInfoView_Previews: PreviewProvider {
    static var previews: some View {
        BasicInfoView()
    }
}
