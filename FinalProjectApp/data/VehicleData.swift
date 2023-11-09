//
//  VehicleData.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 11/9/23.
//

import Foundation
import SwiftUI

struct VehicleData: Identifiable {
    
    let make: String
    let model: String
    let imageName: String
    let description: String
    let id = UUID()
    //var view: AnyView
    
    static func examples() -> [VehicleData] {
        [VehicleData(make: "Toyota", model: "4Runner", imageName: "exampleDashboard", description: "Here is where the info about your Toyota 4Runner goes"/*, view: BasicInfoView()*/),
         VehicleData(make: " ", model: "CRV", imageName: "DashboardLogExample", description: "Here is where the info about your Honda CRV goes"/*, view: LogPageView()*/),
         VehicleData(make: " ", model: "4Runner", imageName: "RemindersExample", description: "Here is where the info about your Toyota 4Runner goes"/*, view: ReminderView()*/)]
        
    }
    static func example1() -> VehicleData {
        VehicleData(make: "Toyota", model: "4Runner", imageName: "exampleDashboard", description: "Here is where the info about your Toyota 4Runner goes.")
    }
}
