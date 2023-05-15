
// Conversions from https://www.unitconverters.net/
// Converting from imperial to meteric and vice versa gives approximate results

import Foundation

struct MetricTon {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Metric Ton": return num * 1
        case "Kilogram": return num * 1000
        case "Gram": return num * 1000000
        case "Milligram": return num * 1000000000
        case "Imperial Ton": return num * 0.9842073304
        case "Pound": return num * 2204.6244202
        case "Ounce": return num * 35273.990723
        default: return 0.0
        }
    }
}

struct Kilogram {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Metric Ton": return num * 0.001
        case "Kilogram": return num * 1
        case "Gram": return num * 1000
        case "Milligram": return num * 1000000
        case "Imperial Ton": return num * 0.0009842073
        case "Pound": return num * 2.2046244202
        case "Ounce": return num * 35.273990723
        default: return 0.0
        }
    }
}

struct Gram {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Metric Ton": return num * 0.000001
        case "Kilogram": return num * 0.001
        case "Gram": return num * 1
        case "Milligram": return num * 1000
        case "Imperial Ton": return num * 0.00000098420733
        case "Pound": return num * 0.0022046244
        case "Ounce": return num * 0.0352739907
        default: return 0.0
        }
    }
}

struct Milligram {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Metric Ton": return num * 0.000000001
        case "Kilogram": return num * 0.000001
        case "Gram": return num * 0.001
        case "Milligram": return num * 1
        case "Imperial Ton": return num * 0.0000000009842
        case "Pound": return num * 0.0000022046
        case "Ounce": return num * 0.000035274
        default: return 0.0
        }
    }
}

struct ImperialTon {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Metric Ton": return num * 1.01604608
        case "Kilogram": return num * 1016.04608
        case "Gram": return num * 1016046.08
        case "Milligram": return num * 1016046080
        case "Imperial Ton": return num * 1
        case "Pound": return num * 2240
        case "Ounce": return num * 35840
        default: return 0.0
        }
    }
}

struct Pound {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Metric Ton": return num * 0.000453592
        case "Kilogram": return num * 0.453592
        case "Gram": return num * 453.592
        case "Milligram": return num * 453592
        case "Imperial Ton": return num * 0.0004464286
        case "Pound": return num * 1
        case "Ounce": return num * 16
        default: return 0.0
        }
    }
}

struct Ounce {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Metric Ton": return num * 0.0000283495
        case "Kilogram": return num * 0.0283495
        case "Gram": return num * 28.3495
        case "Milligram": return num * 28349.5
        case "Imperial Ton": return num * 0.0000279018
        case "Pound": return num * 0.0625
        case "Ounce": return num * 1
        default: return 0.0
        }
    }
}
