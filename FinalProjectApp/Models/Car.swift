//
//  Car.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 12/16/23.
//

import Foundation
import Observation

@Observable
class Car: Codable, Identifiable {
    
    let id: UUID
    var info: [String]
    let title: String
    let imageName: String
    var reminders: [Reminder]
    var logs: [JournalEntry]
    
    init(id: UUID, info: [String], title: String, imageName: String, reminders: [Reminder], logs: [JournalEntry]) {
        self.id = id
        self.info = info
        self.title = title
        self.imageName = imageName
        self.reminders = reminders
        self.logs = logs
    }
    
    static let toyota = Car(id: UUID(), info: Car.toyotaInfo, title: Car.toyotaTitle, imageName: Car.toyotaImageName, reminders: [], logs: [])
    static let honda = Car(id: UUID(), info: Car.hondaInfo, title: Car.hondaTitle, imageName: Car.hondaImageName, reminders: [], logs: [])
    
    static let hondaInfo = [
        "Engine Type and Required Fuel : Regular Unleaded V-6",
        "Maximum Horsepower @ RPM : 280 @ 6000",
        "Maximum Torque @ RPM : 262 @ 4700",
        "Fuel Capacity / Gas Tank Size : 19.5 gal",
        "Brake Type : Power-ASsisted 12.6in / 13.0in",
        "Wheel Size (inches) : 20in split-spoke gloss black alloy"
    ]
    static let hondaTitle = "2020 Honda Passport"
    static let hondaImageName = "Honda"

    static let toyotaInfo = [
        "T Engine Type and Required Fuel : Regular Unleaded V-6",
        "T Maximum Horsepower @ RPM : 270 @ 5600",
        "T Maximum Torque @ RPM : 278 @ 4400",
        "T Fuel Capacity / Gas Tank Size : 23",
        "T Brake Type : 4-Wheel Disc",
        "T Wheel Size (inches) : 17 x 7",
        "T Maxiumum Towing Capacity (pounds) : 5000"
    ]
    static let toyotaTitle = "2017 Toyota 4Runner"
    static let toyotaImageName = "Toyota"
}
