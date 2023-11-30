//
//  ServiceView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 10/26/23.
//

import Foundation
import SwiftUI
import MapKit

 struct ServiceView: View {

     let pellmans_automotive_service =  CLLocationCoordinate2D(latitude: 40.0249504184905, longitude:-105.23791747272928)
    
     let boulder_valley_automotive = CLLocationCoordinate2D(latitude: 40.024715508458534, longitude:-105.24340187272932)
     
     let hoshi_motors = CLLocationCoordinate2D(latitude: 40.028198233050944, longitude: -105.22590013225133)
     
     let autoHaus_of_boulder = CLLocationCoordinate2D(latitude: 40.0266081452668, longitude:  -105.24100071505767)
     
     let hands_on_auto_tech = CLLocationCoordinate2D(latitude: 40.15928326671682, longitude:-105.0257191612246)
     
     let repair_masters_automotive = CLLocationCoordinate2D(latitude: 40.027636101035554, longitude:-105.24764361745986)
     
     let alpha_omega_independent_car_repair = CLLocationCoordinate2D(latitude: 40.02474792941037, longitude:-105.23883701520184)
     
     let independent_motors = CLLocationCoordinate2D(latitude: 40.014564911021886, longitude:-105.22665070206499)
     
     var body: some View {
         Map() {
             Marker("Pellman's Automotive Service", systemImage: "car" ,coordinate: pellmans_automotive_service)
                 .tint(.black)
             Marker("Boulder Valley Automotive", systemImage: "car", coordinate: boulder_valley_automotive)
                 .tint(.black)
             Marker("Hoshi Motors", systemImage: "car", coordinate: hoshi_motors)
                 .tint(.black)
             Marker("AutoHaus Of Boulder", systemImage: "car", coordinate: autoHaus_of_boulder)
                 .tint(.black)
             Marker("Hands On Auto Tech", systemImage: "car", coordinate: hands_on_auto_tech)
                 .tint(.black)
             Marker("Repair Masters Automotive", systemImage: "car", coordinate: repair_masters_automotive)
                 .tint(.black)
             Marker("Alpha & Omega Independent Car Repair", systemImage: "car", coordinate: alpha_omega_independent_car_repair)
                 .tint(.black)
             Marker("Independent Motors", systemImage: "car", coordinate: independent_motors)
                 .tint(.black)
             
         }
     }
 }
