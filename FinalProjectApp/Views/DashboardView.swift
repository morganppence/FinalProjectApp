//
//  DashboardView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 10/26/23.
//

import Foundation
import SwiftUI


struct DashboardView: View {
    
    @Environment(Model.self) var model
    
    @State var isOn: Bool = false
    @State private var vehicle = VehicleData.examples()
    
    var body: some View {
        ScrollView {
            VStack {
                NavigationLink(destination: { BasicInfoView().environment(model)}) {
                    //DashCardView()
                    DashboardCardView1()
                }
                NavigationLink(destination: { ReminderView().environment(model)
                } ) {
                    ReminderCardView()
                }
                NavigationLink(destination: LogPageView().environment(model)) {
                    DashboardLogCardView()
                }
                NavigationLink(destination: ServiceView()) {
                    ServiceMapCardView()
                }
                NavigationLink(destination: CarSelectionView()) {
                    AddVehicleCardView()
                }
            }
            .navigationTitle("Your Dashboard")
            .toolbar {
                Button(action: model.switchCars) {
                    HStack{
                        Text("Switch Vehicle")
                        Image(systemName: "car.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 20.0)
                    }
                    
                }
            }
        }
    }
}



struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .environment(Model())
    }
}

