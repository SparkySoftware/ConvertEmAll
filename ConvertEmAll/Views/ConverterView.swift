import SwiftUI

struct ConverterView: View {
    
    @State private var input: Double = 0
    @State private var selectedFromUnitIndex = 0
    @State private var selectedToUnitIndex = 0
    @FocusState private var inputFocused: Bool
    
    private var fromUnit: DistanceUnit {
        LengthUnits.units[selectedFromUnitIndex]
    }
    
    private var toUnit: DistanceUnit {
        LengthUnits.units[selectedToUnitIndex]
    }

    private var answer: Double {
        convert(input)
    }
    
    func convert(_ input: Double) -> Double {
        let baseValue = input * fromUnit.toBaseFactor
        return baseValue / toUnit.toBaseFactor
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("From Unit")) {
                    Picker("From Unit", selection: $selectedFromUnitIndex) {
                        ForEach(0..<LengthUnits.units.count, id: \.self) { index in
                            Text(LengthUnits.units[index].name)
                        }
                    }
                }
                
                Section(header: Text("To Unit")) {
                    Picker("To Unit", selection: $selectedToUnitIndex) {
                        ForEach(0..<LengthUnits.units.count, id: \.self) { index in
                            Text(LengthUnits.units[index].name)
                        }
                    }
                }
                
                Section(header: Text("Enter Value")) {
                    TextField("Value", value: $input, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputFocused)
                }
                
                Section(header: Text("Answer")) {
                    Text(answer, format: .number)
                }
            }
            .navigationTitle("Distance Converter")
            .toolbar {
                if inputFocused  {
                    Button("Done"){
                        inputFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ConverterView()
}
