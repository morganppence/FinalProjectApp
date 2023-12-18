//
//  FinalProjectAppApp.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 10/25/23.
//

import SwiftUI

@Observable
class Model {
    
    static let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appending(path: "cars.txt")
    
    var car1: Car
    var car2: Car
    var currentCar: Car
    
    init() {
        
        do {
            let data = try Data(contentsOf: Model.url)
            let cars = try JSONDecoder().decode([Car].self, from: data)
            
            if cars.count > 0 {
                self.car1 = cars[0]
                self.currentCar = cars[0]
            } else {
                self.car1 = Car.toyota
                self.currentCar = Car.toyota
                self.car2 = Car.honda
            }
            if cars.count > 1 {
                self.car2 = cars[1]
            } else {
                self.car2 = Car.honda
            }
            self.currentCar = self.car1
            return
        } catch {
            print(error.localizedDescription, error)
        }
        
        let car1 = Car.toyota
        self.car1 = car1
        self.car2 = Car.honda
        self.currentCar = car1
    }
    
    func save() {
        do {
            let data = try JSONEncoder().encode([car1, car2])
            try data.write(to: Model.url)
        } catch {
            print(error.localizedDescription, error)
        }
    }
    
    func switchCars() {
        if currentCar === car1 {
            currentCar = car2
        } else {
            currentCar = car1
        }
    }
}

@main
struct FinalProjectAppApp: App {
    
    @State var model = Model()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                DashboardView()
                    .environment(model)
            }
        }
    }
}
