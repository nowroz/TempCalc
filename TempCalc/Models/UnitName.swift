//
//  UnitName.swift
//  TempCalc
//
//  Created by Nowroz Islam on 30/10/23.
//

import Foundation

enum UnitName: String, CaseIterable {
    case fahrenheit = "Fahrenheit"
    case celsius = "Celsius"
    case kelvin = "Kelvin"
}

extension UnitName: Identifiable {
    var id: Self {
        self
    }
}

extension UnitName {
    var type: UnitTemperature {
        switch self {
        case .fahrenheit:
            UnitTemperature.fahrenheit
        case .celsius:
            UnitTemperature.celsius
        case .kelvin:
            UnitTemperature.kelvin
        }
    }
}
