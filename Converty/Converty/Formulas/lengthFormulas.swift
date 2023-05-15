
// Conversions from https://www.unitconverters.net/
// Converting from imperial to meteric and vice versa gives approximate results


import Foundation


struct Meter {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    func getConverstion(unit: String) -> Double {
        switch unit {
        case "Kilometer": return num * 0.001
        case "Meter": return num * 1
        case "Centimeter": return num * 100
        case "Millimeter": return num * 1000
        case "Mile": return num * 0.0006213689
        case "Yard": return num * 1.0936132983
        case "Foot": return num * 3.280839895
        case "Inch": return num * 39.37007874
        default: return 0.0
        }
    }
}

struct Kilometer {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    func getConverstion(unit: String) -> Double {
        switch unit {
        case "Kilometer": return num * 1
        case "Meter": return num * 1000
        case "Centimeter": return num * 100000
        case "Millimeter": return num * 1000000
        case "Mile": return num * 0.6213688756
        case "Yard": return num * 1093.6132983
        case "Foot": return num * 3280.839895
        case "Inch": return num * 39370.07874
        default: return 0.0
        }
    }
}

struct Centimeter {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    func getConverstion(unit: String) -> Double {
        switch unit {
        case "Kilometer": return num * 0.00001
        case "Meter": return num * 0.01
        case "Centimeter": return num * 1
        case "Millimeter": return num * 10
        case "Mile": return num * 0.0000062137
        case "Yard": return num * 0.010936133
        case "Foot": return num * 0.032808399
        case "Inch": return num * 0.032808399
        default: return 0.0
        }
    }
}

struct Millimeter {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    func getConverstion(unit: String) -> Double {
        switch unit {
        case "Kilometer": return num * 0.000001
        case "Meter": return num * 0.001
        case "Centimeter": return num * 0.1
        case "Millimeter": return num * 1
        case "Mile": return num * 0.00000062136887
        case "Yard": return num * 0.0010936133
        case "Foot": return num * 0.0032808399
        case "Inch": return num * 0.0393700787
        default: return 0.0
        }
    }
    
}

struct Foot {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Kilometer": return num * 0.0003048
        case "Meter": return num * 0.3048
        case "Centimeter": return num * 30.48
        case "Millimeter": return num * 304.8
        case "Mile": return num * 0.0001893932
        case "Yard": return num * 0.3333333333
        case "Foot": return num * 1
        case "Inch": return num * 12
        default: return 0.0
        }
    }
}

struct Yard {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Kilometer": return num * 0.0009144
        case "Meter": return num * 0.9144
        case "Centimeter": return num * 91.44
        case "Millimeter": return num * 914.4
        case "Mile": return num * 0.0005681797
        case "Yard": return num * 1
        case "Foot": return num * 3
        case "Inch": return num * 36
        default: return 0.0
        }
    }
}

struct Mile {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Kilometer": return num * 1.60935
        case "Meter": return num * 1609.35
        case "Centimeter": return num * 160935
        case "Millimeter": return num * 1609350
        case "Mile": return num * 1
        case "Yard": return num * 1760.0065617
        case "Foot": return num * 5280.019685
        case "Inch": return num * 63360.23622
        default: return 0.0
        }
    }
}

struct Inch {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Kilometer": return num *  0.0000254
        case "Meter": return num * 0.0254
        case "Centimeter": return num * 2.54
        case "Millimeter": return num * 25.4
        case "Mile": return num * 0.0000157828
        case "Yard": return num * 0.0277777778
        case "Foot": return num * 0.0833333333
        case "Inch": return num * 1
        default: return 0.0
        }
    }
}
