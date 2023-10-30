//
//  ContentView.swift
//  TempCalc
//
//  Created by Nowroz Islam on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    @Bindable var conversion: Conversion = Conversion()
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Input") {
                    HStack {
                        TextField("Input", value: $conversion.input, format: .number)
                            .font(.title)
                        
                        Picker("Select input unit", selection: $conversion.inputUnitName) {
                            ForEach(UnitName.allCases) {
                                Text($0.rawValue)
                            }
                        }
                        .pickerStyle(.wheel)
                    }
                }
                
                Section("Output") {
                    HStack {
                        Text(conversion.output, format: .number)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Picker("Select output unit", selection: $conversion.outputUnitName) {
                            ForEach(UnitName.allCases) {
                                Text($0.rawValue)
                            }
                        }
                        .pickerStyle(.wheel)
                    }
                }
            }
            .navigationTitle("TempCalc")
        }
    }
}

#Preview {
    ContentView()
}
