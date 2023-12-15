//
//  LocationService.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 12/7/23.
//

/*
 import Foundation
 import MapKit
 
 
 class LocationService {
 static let shared = LocationService()
 private init() {}
 
 static func searchLocations(_ searchText: String, region: MKCoordinateRegion) async -> [MKMapItem] {
 let request = MKLocalSearch.Request()
 request.naturalLanguageQuery = searchText
 request.region = region
 
 let results = try? await MKLocalSearch(request: request).start()
 return results?.mapItems ?? []
 }
 
 static func fetchRoute(from origin: MKMapItem, to destination: MKMapItem) async -> MKRoute? {
 let request = MKDirections.Request()
 request.source = origin
 request.destination = destination
 
 let result = try? await MKDirections(request: request).calculate()
 return result?.routes.first
 }
 }
 */
