//
//  ServiceMapView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 12/7/23.
//
/*
import SwiftUI
import Foundation
import MapKit

struct ServiceMapView: View {
    @State private var cameraPosition: MapCameraPosition = .region(.userRegion)
    @ObservedObject var ViewModel: ServiceMapViewModel
    
    @State private var searchText = ""
    @State private var selectedLocation: MKMapItem?
    @State private var
    
    var body: some View {
        Map(position: $cameraPosition, selection: $selectedLocation) {
            Annotation("current location", coordinate: .userLocation)
            
        }
    }
    
    
    
}*/


/*import SwiftUI
import MapKit

struct ServiceMapView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), // Default coordinates (San Francisco)
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .follow, annotationItems: locations) { location in
            MapPin(coordinate: location.coordinate, tint: .blue)
        }
        .onAppear {
            setInitialRegion()
        }
    }

    private func setInitialRegion() {
        // You can set the initial region based on the user's current location or other criteria.
        // Here, we are using a default region for San Francisco as an example.
        region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
    }
}

struct Location: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

let locations: [Location] = [
    Location(coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)), // San Francisco
    Location(coordinate: CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437)), // Los Angeles
    // Add more locations as needed
]

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceMapView()
    }
}*/
