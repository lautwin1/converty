
import Foundation
import SwiftUI



struct LengthMenu: View {
    @State private var topNumInput: String = ""
    @State private var bottomNumInput: String = ""
    @State private var topSelectedUnit: String = "Meter"
    @State private var bottomSelectedUnit: String = "Centimeter"
    @State private var roundingVal: String = "thousandth"
    @State private var topOut: Bool = false
    @State private var bottomOut: Bool = true
    let units = [
        "Kilometer",
        "Meter",
        "Centimeter",
        "Millimeter",
        "Mile",
        "Yard",
        "Foot",
        "Inch"
    ]
    let roundValues = [
        "whole number",
        "tenth",
        "hundredth",
        "thousandth",
        "ten thousandth",
        "hundred thousandth",
        "millionth",
        "no rounding"
    ]
    var body: some View {
        VStack {
            Text("Length Conversion")
                .font(.title)
            
            VStack {
                Menu {
                    Picker("Select decimal accuracy", selection: $roundingVal) {
                        ForEach(roundValues, id: \.self) {
                            Text($0)
                        }
                    }
                    .onChange(of: roundingVal) { newValue in
                        if bottomOut {
                            bottomNumInput = convertNum(givenNum: topNumInput, givenUnit: topSelectedUnit, newUnit: bottomSelectedUnit, roundNum: roundingVal)
                        } else if topOut {
                            topNumInput = convertNum(givenNum: bottomNumInput, givenUnit: bottomSelectedUnit, newUnit: topSelectedUnit, roundNum: roundingVal)
                        }
                    }
                } label: {
                    Label("Rounding", systemImage: "gearshape.fill")
                }
                .padding(.leading, 245)
                .onChange(of: roundingVal) { newValue in
                    if bottomOut {
                        bottomNumInput = convertNum(givenNum: topNumInput, givenUnit: topSelectedUnit, newUnit: bottomSelectedUnit, roundNum: roundingVal)
                    } else if topOut {
                        topNumInput = convertNum(givenNum: bottomNumInput, givenUnit: bottomSelectedUnit, newUnit: topSelectedUnit, roundNum: roundingVal)
                    }
                    
                }
                
                TextField("Enter Number here", text: $topNumInput) { isEditng in
                    bottomOut = true
                    topOut = false
                }
                .textFieldStyle(LengthTextFieldStyle())
                .onChange(of: topNumInput) { newValue in
                    if bottomOut {
                        bottomNumInput = convertNum(givenNum: topNumInput, givenUnit: topSelectedUnit, newUnit: bottomSelectedUnit, roundNum: roundingVal)
                    }
                          
                }
                Picker("Please select a unit", selection: $topSelectedUnit) {
                    ForEach(units, id: \.self) {
                        Text($0)
                    }
                }
                .onChange(of: topSelectedUnit) { newValue in
                    bottomNumInput = convertNum(givenNum: topNumInput, givenUnit: topSelectedUnit, newUnit: bottomSelectedUnit, roundNum: roundingVal)
                }
                .overlay (
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Pastel Blue"), lineWidth: 2)
                        .frame(width: 250)
                )
                .offset(y: 15)
            }
            .padding(20)
            
            VStack {
                TextField("Enter Number here", text: $bottomNumInput) { isEditing in
                    bottomOut = false
                    topOut = true
                }
                .textFieldStyle(LengthTextFieldStyle())
                .padding(.top, 40)
                .onChange(of: bottomNumInput) { newValue in
                    if topOut {
                        topNumInput = convertNum(givenNum: bottomNumInput, givenUnit: bottomSelectedUnit, newUnit: topSelectedUnit, roundNum: roundingVal)
                    }
                          
                }
                      
                Picker("Please select a unit", selection: $bottomSelectedUnit) {
                    ForEach(units, id: \.self) {
                        Text($0)
                    }
                }
                .onChange(of: bottomSelectedUnit) { newValue in
                    if bottomOut {
                        bottomNumInput = convertNum(givenNum: topNumInput, givenUnit: topSelectedUnit, newUnit: bottomSelectedUnit, roundNum: roundingVal)
                    } else if topOut {
                        topNumInput = convertNum(givenNum: bottomNumInput, givenUnit: bottomSelectedUnit, newUnit: topSelectedUnit, roundNum: roundingVal)
                    }
                }
                .overlay (
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Pastel Blue"), lineWidth: 2)
                        .frame(width: 250)
                        
                )
                .offset(y: 15)
                
            }
            .padding(20)
        }
        .padding(.bottom, 50)
            
    }
    func changeRoundValue() {
        
    }
}
