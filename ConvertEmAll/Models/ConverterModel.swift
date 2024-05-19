//
//  DistanceModel.swift
//  ConvertEmAll
//
//  Created by Jamie Galloro on 2024-05-17.
//

import Foundation
import SwiftUI


    class DistanceUnit: Identifiable {
        let id = UUID()
        let name: String
        let toBaseFactor: Double
        
        init(name: String, toBaseFactor: Double) {
            self.name = name
            self.toBaseFactor = toBaseFactor
        }
    }

    struct LengthUnits {
        static let units = [
            DistanceUnit(name: "Millimeters", toBaseFactor: 0.001),
            DistanceUnit(name: "Centimeters", toBaseFactor: 0.01),
            DistanceUnit(name: "Meters", toBaseFactor: 1.0),
            DistanceUnit(name: "Kilometers", toBaseFactor: 1000.0),
            DistanceUnit(name: "Inches", toBaseFactor: 0.0254),
            DistanceUnit(name: "Feet", toBaseFactor: 0.3048),
            DistanceUnit(name: "Yards", toBaseFactor: 0.9144),
            DistanceUnit(name: "Miles", toBaseFactor: 1609.34),
            DistanceUnit(name: "Nautical Miles", toBaseFactor: 1852.0)
        ]
    }

struct WeightUnits {
    static let units = [
        DistanceUnit(name: "Milligrams", toBaseFactor: 0.000001),
        DistanceUnit(name: "Grams", toBaseFactor: 0.001),
        DistanceUnit(name: "Kilograms", toBaseFactor: 1.0),
        DistanceUnit(name: "Metric Tons", toBaseFactor: 1000.0),
        DistanceUnit(name: "Ounces", toBaseFactor: 0.0283495),
        DistanceUnit(name: "Pounds", toBaseFactor: 0.453592),
        DistanceUnit(name: "Stones", toBaseFactor: 6.35029),
        DistanceUnit(name: "Short Tons", toBaseFactor: 907.185),
        DistanceUnit(name: "Long Tons", toBaseFactor: 1016.05)
    ]
}

struct VolumeUnits {
    static let units = [
        DistanceUnit(name: "Milliliters", toBaseFactor: 0.001),
        DistanceUnit(name: "Centiliters", toBaseFactor: 0.01),
        DistanceUnit(name: "Deciliters", toBaseFactor: 0.1),
        DistanceUnit(name: "Liters", toBaseFactor: 1.0),
        DistanceUnit(name: "Cubic Meters", toBaseFactor: 1000.0),
        DistanceUnit(name: "Teaspoons", toBaseFactor: 0.00492892),
        DistanceUnit(name: "Tablespoons", toBaseFactor: 0.0147868),
        DistanceUnit(name: "Cups", toBaseFactor: 0.24),
        DistanceUnit(name: "Pints", toBaseFactor: 0.473176),
        DistanceUnit(name: "Quarts", toBaseFactor: 0.946353),
        DistanceUnit(name: "Gallons", toBaseFactor: 3.78541),
        DistanceUnit(name: "Cubic Inches", toBaseFactor: 0.0163871),
        DistanceUnit(name: "Cubic Feet", toBaseFactor: 28.3168),
        DistanceUnit(name: "Cubic Yards", toBaseFactor: 764.555)
    ]
}

struct TemperatureUnits {
    static let units = [
        DistanceUnit(name: "Celsius", toBaseFactor: 1.0), // Conversion needs special handling
        DistanceUnit(name: "Fahrenheit", toBaseFactor: 1.0), // Conversion needs special handling
        DistanceUnit(name: "Kelvin", toBaseFactor: 1.0) // Conversion needs special handling
    ]
}

struct SpeedUnits {
    static let units = [
        DistanceUnit(name: "Meters per Second", toBaseFactor: 1.0),
        DistanceUnit(name: "Kilometers per Hour", toBaseFactor: 0.277778),
        DistanceUnit(name: "Miles per Hour", toBaseFactor: 0.44704),
        DistanceUnit(name: "Feet per Second", toBaseFactor: 0.3048),
        DistanceUnit(name: "Knots", toBaseFactor: 0.514444)
    ]
}

