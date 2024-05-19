import SwiftUI

struct WeightConverterView: View {
    
    @State private var input: Double = 0
    @State private var selectedFromUnitIndex = 2
    @State private var selectedToUnitIndex = 5
    @FocusState private var inputFocused: Bool
    
    private var fromUnit: DistanceUnit {
        WeightUnits.units[selectedFromUnitIndex]
    }
    
    private var toUnit: DistanceUnit {
        WeightUnits.units[selectedToUnitIndex]
    }
    
    private var answer: Double {
        convert(input)
    }
    
    func convert(_ input: Double) -> Double {
        let baseValue = input * fromUnit.toBaseFactor
        return baseValue / toUnit.toBaseFactor
    }
    
    func switchUnits() {
        let temp = selectedFromUnitIndex
        selectedFromUnitIndex = selectedToUnitIndex
        selectedToUnitIndex = temp
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Unit One")) {
                    Picker("From", selection: $selectedFromUnitIndex) {
                        ForEach(0..<WeightUnits.units.count, id: \.self) { index in
                            Text(WeightUnits.units[index].name)
                        }
                    }
                }
                
                Section(header: Text("Unit Two")) {
                    Picker("To", selection: $selectedToUnitIndex) {
                        ForEach(0..<WeightUnits.units.count, id: \.self) { index in
                            Text(WeightUnits.units[index].name)
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
            .navigationTitle("Temperature Converter")
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
    WeightConverterView()
}
