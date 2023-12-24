//
//  ContentView.swift
//  LengthConversion
//
//  Created by Anousheh Hasan on 24/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var inputLength = 0.0
    @State private var inputLengthType = "m"
    @State private var outputLengthType = "km"
    
    
    let lengthTypes = ["m", "km", "yards", "feet", "miles"]
    
    var mToKm: Double {
        let answer = inputLength / 1000
        return answer
    }
    
    var kmToM: Double {
        let answer = inputLength * 1000
        return answer
    }
    
    var mToYards: Double {
        let answer = inputLength * 1.09361
        return answer
    }
    
    var yardsToM: Double {
        let answer = inputLength / 1.09361
        return answer
    }
    
    var mToFeet: Double {
        let answer = inputLength * 3.28084
        return answer
    }
    
    var feetToM: Double {
        let answer = inputLength / 3.28084
        return answer
    }
    
    var mToMiles: Double {
        let answer = inputLength * 0.000621371
        return answer
    }
    
    var milesToM: Double {
        let answer = inputLength / 0.000621371
        return answer
    }
    
    var kmToYards: Double {
        let answer = inputLength * 1093.61
        return answer
    }
    
    var yardsToKm: Double {
        let answer = inputLength / 1093.61
        return answer
    }
    
    var kmToFeet: Double {
        let answer = inputLength * 3280.84
        return answer
    }
    
    var feetToKm: Double {
        let answer = inputLength / 3280.84
        return answer
    }
    
    var kmToMiles: Double {
        let answer = inputLength * 0.621371
        return answer
    }
    
    var milesToKm: Double {
        let answer = inputLength / 0.621371
        return answer
    }
    
    var yardsToFeet: Double {
        let answer = inputLength * 3
        return answer
    }
    
    var  feetToYards: Double {
        let answer = inputLength / 3
        return answer
    }
    
    var yardsToMiles: Double {
        let answer = inputLength / 1760
        return answer
    }
    
    var milesToYards: Double {
        let answer = inputLength * 1760
        return answer
    }
    
    var feetToMiles: Double {
        let answer = inputLength / 5280
        return answer
    }
    
    var milesToFeet: Double {
        let answer = inputLength * 5280
        return answer
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Picker("Initial Length Unit", selection: $inputLengthType) {
                        ForEach(lengthTypes, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    TextField("Enter Length", value: $inputLength, format: .number)
                }
                
                Section {
                    Picker("Final Length Unit", selection: $outputLengthType) {
                        ForEach(lengthTypes, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    Text(mToKm, format: .number)
                    
                }
                .navigationTitle("Length Converter")
            }
        }
    }
}

#Preview {
    ContentView()
}
