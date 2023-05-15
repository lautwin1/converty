
// Conversions from https://www.unitconverters.net/
// Converting from imperial to meteric and vice versa gives approximate results

import Foundation

struct SquareKilometer {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Square kilometer": return num * 1
        case "Square meter": return num * 1000000
        case "Square mile": return num * 0.3861018768
        case "Square yard": return num * 1195990.0463
        case "Square foot": return num * 10763910.417
        case "Acre": return num * 247.10538147
        default: return 0.0
        }
    }
}

struct SquareMeter {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Square kilometer": return num * 0.000001
        case "Square meter": return num * 1
        case "Square mile": return num *  0.00000038610187
        case "Square yard": return num * 1.1959900463
        case "Square foot": return num * 10.763910417
        case "Square inch": return num * 1550.0031
        case "Hectare": return num * 0.0001
        case "Acre": return num * 0.0002471054
        default: return 0.0
        }
    }
}

struct SquareMile {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Square kilometer": return num * 2.58999
        case "Square meter": return num * 2589990
        case "Square mile": return num * 1
        case "Square yard": return num * 3097602.26
        case "Square foot": return num * 27878420.34
        case "Square inch": return num * 4014492529
        case "Hectare": return num * 258.999
        case "Acre": return num * 640.00046695
        default: return 0.0
        }
    }
}

struct SquareYard {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Square kilometer": return num * 0.0000008361273
        case "Square meter": return num * 0.83612736
        case "Square mile": return num * 0.0000008361273
        case "Square yard": return num * 1
        case "Square foot": return num * 9
        case "Square inch": return num * 1296
        case "Hectare": return num * 0.0000836127
        case "Acre": return num * 0.0002066116
        default: return 0.0
        }
    }
}

struct SquareFoot {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Square kilometer": return num * 0.0000000929030
        case "Square meter": return num * 0.09290304
        case "Square mile": return num * 0.0000000358700
        case "Square yard": return num * 0.1111111111
        case "Square foot": return num * 1
        case "Square inch": return num * 144
        case "Hectare": return num * 0.0000092903
        case "Acre": return num * 0.0000229568
        default: return 0.0
        }
    }
}

struct SquareInch {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Square kilometer": return num * 0.0000000006452
        case "Square meter": return num * 0.00064516
        case "Square mile": return num * 0.0000000002490
        case "Square yard": return num * 0.0007716049
        case "Square foot": return num * 0.0069444444
        case "Square inch": return num * 1
        case "Hectare": return num * 0.000000064516
        case "Acre": return num * 0.0000001594225
        default: return 0.0
        }
    }
}

struct Hectare {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Square kilometer": return num * 0.01
        case "Square meter": return num * 10000
        case "Square mile": return num * 0.0038610188
        case "Square yard": return num * 11959.900463
        case "Square foot": return num * 107639.10417
        case "Square inch": return num * 15500031
        case "Hectare": return num * 1
        case "Acre": return num * 2.4710538147
        default: return 0.0
        }
    }
}

struct Acre {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Square kilometer": return num * 0.0040468564
        case "Square meter": return num * 4046.8564224
        case "Square mile": return num * 0.0015624989
        case "Square yard": return num * 4840
        case "Square foot": return num * 43560
        case "Square inch": return num * 6272640
        case "Hectare": return num * 0.4046856422
        case "Acre": return num * 1
        default: return 0.0
        }
    }
}
