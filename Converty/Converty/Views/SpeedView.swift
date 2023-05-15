
import Foundation
import SwiftUI



struct SpeedMenu: View {
    @State private var topNumInput: String = ""
    @State private var bottomNumInput: String = ""
    @State private var topSelectedUnit: String = "Mile per hour"
    @State private var bottomSelectedUnit: String = "Kilometer per hour"
    @State private var roundingVal: String = "thousandth"
    @State private var topOut: Bool = false
    @State private var bottomOut: Bool = true

    let units = [
        "Mile per hour",
        "Foot per hour",
        "Meter per hour",
        "Kilometer per hour",
        "Knots"
    ]
    let roundValues = [
        "whole number",
        "tenth",
        "hundredth",
        "thousandth",
        "ten thousandth",
        "hundred thousandth",
        "millionth"
    ]
    var body: some View {
        VStack {
            Text("Speed Conversion")
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
                .textFieldStyle(SpeedTextFieldStyle())
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
                        .stroke(Color("Pastel Green"), lineWidth: 2)
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
                .textFieldStyle(SpeedTextFieldStyle())
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
                        .stroke(Color("Pastel Green"), lineWidth: 2)
                        .frame(width: 250)
                        
                )
                .offset(y: 15)
                
            }
            .padding(20)
        }
        .padding(.bottom, 50)
    }
}
