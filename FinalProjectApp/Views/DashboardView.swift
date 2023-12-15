//
//  DashboardView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 10/26/23.
//

import Foundation
import SwiftUI


struct DashboardView: View {
    @State var isOn: Bool = false
    @State private var vehicle = VehicleData.examples()
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: BasicInfoView()) {
                    //DashCardView()
                    DashboardCardView1()
                }
                NavigationLink(destination: ReminderView()) {
                    ReminderCardView()
                }
                NavigationLink(destination: LogPageView()) {
                    DashboardLogCardView()
                }
                NavigationLink(destination: CarSelectionView()) {
                    AddVehicleCardView()
                }
            }
            .navigationTitle("Your Dashboard")
        }
    }
}



struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

