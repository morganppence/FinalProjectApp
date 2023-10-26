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

     let petes =  CLLocationCoordinate2D(latitude: 40.00787527975535, longitude:-105.2760620618876)
    
     let sink = CLLocationCoordinate2D(latitude: 40.00864460358176, longitude: -105.27640732523392)
     
     let corner = CLLocationCoordinate2D(latitude: 40.00747859378781, longitude: -105.27602675087392)
     
     var body: some View {
         Map() {
             Marker("Illegal Pete's", systemImage: "wineglass" ,coordinate: petes)
                 .tint(.green)
             Marker("The Sink", systemImage: "fork.knife.circle.fill", coordinate: sink)
             Marker("The Corner", systemImage: "fork.knife", coordinate: corner)
                 .tint(.black)
         }
     }
 }
