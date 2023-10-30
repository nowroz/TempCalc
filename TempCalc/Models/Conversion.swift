//
//  Conversion.swift
//  TempCalc
//
//  Created by Nowroz Islam on 30/10/23.
//

import Foundation

@Observable
final class Conversion {
    var input: Double
    var inputUnitName: UnitName
    var outputUnitName: UnitName
    
    init(input: Double = 0, inputName: UnitName = .celsius, outputName: UnitName = .fahrenheit) {
        self.input = input
        self.inputUnitName = inputName
        self.outputUnitName = outputName
    }
}

extension Conversion {
    var output: Double {
        let input = Measurement(value: input, unit: inputUnitName.type)
        let output = input.converted(to: outputUnitName.type)
        return output.value
    }
}
