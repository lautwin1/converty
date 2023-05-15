
// Conversions from https://www.unitconverters.net/
// Converting from imperial to meteric and vice versa gives approximate results

import Foundation

struct Mph {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Mile per hour": return num * 1
        case "Foot per hour": return num * 1.467
        case "Meter per hour": return num / 2.237
        case "Kilometer per hour": return num * 1.609
        case "Knots": return num / 1.151
        default: return 0.0
        }
    }
}

struct Fph {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Mile per hour": return num / 1.467
        case "Foot per second": return num * 1
        case "Meter per second": return num / 3.281
        case "Kilometer per hour": return num * 1.097
        case "Knots": return num / 1.688
        default: return 0.0
        }
    }
}

struct Meph {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Mile per hour": return num * 2.237
        case "Foot per second": return num *  3.281
        case "Meter per second": return num * 1
        case "Kilometer per hour": return num * 3.6
        case "Knots": return num * 1.944
        default: return 0.0
        }
    }
}

struct Kph {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Mile per hour": return num / 1.609
        case "Foot per second": return num / 1.097
        case "Meter per second": return num / 3.6
        case "Kilometer per hour": return num * 1
        case "Knots": return num / 1.852
        default: return 0.0
        }
    }
}

struct Knph {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Mile per hour": return num * 1.151
        case "Foot per second": return num * 1.688
        case "Meter per second": return num / 1.944
        case "Kilometer per hour": return num * 1.852
        case "Knots": return num * 1
        default: return 0.0
        }
    }
}
