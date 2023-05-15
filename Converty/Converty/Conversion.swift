
import Foundation

// Takes a number to convert, its unit, the unit the user wants to convert to, and how much the user wants to round, as the parameter
// Returns a string of the converted number
func convertNum(givenNum: String, givenUnit: String, newUnit: String, roundNum: String) -> String {
    let num: Double = Double(givenNum) ?? 0.0
    let roundVal: Double

    switch roundNum {
    case "whole number": roundVal = 1.0
    case "tenth": roundVal = 10.0
    case "hundredth": roundVal = 100.0
    case "thousandth": roundVal = 1000.0
    case "ten thousandth": roundVal = 10000.0
    case "hundred thousandth": roundVal = 100000.0
    case "millionth": roundVal = 1000000.0
    case "no rounding": roundVal = 100000000000000.0
    default: roundVal = 1000.0
    }
    
    // Uses the given unit of a number to find the proper formula to convert
    // Returns a string of the converted number
    switch givenUnit {
        
    // LENGTH
    case "Meter": return String(round(Meter(numToConvert: num).getConverstion(unit: newUnit) * roundVal) / roundVal)
    case "Kilometer": return String(round(Kilometer(numToConvert: num).getConverstion(unit: newUnit) * roundVal) / roundVal)
    case "Centimeter": return String(round(Centimeter(numToConvert: num).getConverstion(unit: newUnit) * roundVal) / roundVal)
    case "Millimeter": return String(round(Millimeter(numToConvert: num).getConverstion(unit: newUnit) * roundVal) / roundVal)
    case "Mile": return String(round(Mile(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Yard": return String(round(Yard(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Foot": return String(round(Foot(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Inch": return String(round(Inch(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
        
        
    // SPEED
    case "Mile per hour": return String(round(Mph(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Foot per second": return String(round(Fph(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Meter per second": return String(round(Meph(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Kilometer per hour": return String(round(Kph(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Knots": return String(round(Knph(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
        
        
    // MASS
    case "Metric Ton": return String(round(MetricTon(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Kilogram": return String(round(Kilogram(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Gram": return String(round(Gram(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Milligram": return String(round(Milligram(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Imperial Ton": return String(round(ImperialTon(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Pound": return String(round(Pound(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Ounce": return String(round(Ounce(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    
        
    // TIME
    case "Millisecond": return String(round(Millisecond(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Second": return String(round(Second(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Minute": return String(round(Minute(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Hour": return String(round(Hour(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Day": return String(round(Day(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Week": return String(round(Week(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Month": return String(round(Month(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Calendar Year": return String(round(Year(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
        
        
    // AREA 
    case "Square kilometer": return String(round(SquareKilometer(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Square meter": return String(round(SquareMeter(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Square mile": return String(round(SquareMile(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Square yard": return String(round(SquareYard(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Square foot": return String(round(SquareFoot(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Square inch": return String(round(SquareInch(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Hectare": return String(round(Hectare(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Acre": return String(round(Acre(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
        
        
    // VOLUME
    case "Cubic Meter": return String(round(CubicMeter(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Liter": return String(round(Liter(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Milliliter": return String(round(Milliliter(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Gallon": return String(round(Gallon(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Quart": return String(round(Quart(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Pint": return String(round(Pint(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Cup": return String(round(Cup(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Fluid Ounce": return String(round(FluidOunce(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Tablespoon": return String(round(Tablespoon(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Teaspoon": return String(round(Teaspoon(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Cubic Foot": return String(round(CubicFoot(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
    case "Cubic Inch": return String(round(CubicInch(numToConvert: num).getConversion(unit: newUnit) * roundVal) / roundVal)
        
    default: return "Something went wrong!"
        
    }
}
