
// Conversions from https://www.unitconverters.net/
// Converting from imperial to meteric and vice versa gives approximate results


import Foundation

struct CubicMeter {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Cubic meter": return num * 1
        case "Liter": return num * 1000
        case "Milliliter": return num * 1000000
        case "Gallon": return num * 264.17217686
        case "Quart": return num * 1056.6887074
        case "Pint": return num * 1056.6887074
        case "Cup": return num * 4226.7548297
        case "Fluid Ounce": return num * 33814.038638
        case "Tablespoon": return num * 67628.077276
        case "Teaspoon": return num * 202884.23183
        case "Cubic Foot": return num * 35.314666721
        case "Cubic inch": return num * 61023.744095
        default: return 0.0
        }
    }
}

struct Liter {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Cubic meter": return num * 0.001
        case "Liter": return num * 1
        case "Milliliter": return num * 1000
        case "Gallon": return num * 0.2641721769
        case "Quart": return num * 1.0566887074
        case "Pint": return num * 2.1133774149
        case "Cup": return num * 4.2267548297
        case "Fluid Ounce": return num * 33.814038638
        case "Tablespoon": return num * 67.628077276
        case "Teaspoon": return num * 202.88423183
        case "Cubic Foot": return num * 0.0353146667
        case "Cubic inch": return num * 61.023744095
        default: return 0.0
        }
    }
}

struct Milliliter {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Cubic meter": return num * 0.000001
        case "Liter": return num * 0.001
        case "Milliliter": return num * 1
        case "Gallon": return num * 0.0002641722
        case "Quart": return num * 0.0010566887
        case "Pint": return num * 0.0021133774
        case "Cup": return num * 0.0042267548
        case "Fluid Ounce": return num * 0.0338140386
        case "Tablespoon": return num * 0.0676280773
        case "Teaspoon": return num * 0.2028842318
        case "Cubic Foot": return num * 0.0000353147
        case "Cubic inch": return num * 0.0610237441
        default: return 0.0
        }
    }
}

struct Gallon {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Cubic meter": return num * 0.00378541
        case "Liter": return num * 3.78541
        case "Milliliter": return num * 3785.41
        case "Gallon": return num * 1
        case "Quart": return num * 4
        case "Pint": return num * 8
        case "Cup": return num * 16
        case "Fluid Ounce": return num * 128
        case "Tablespoon": return num * 256
        case "Teaspoon": return num * 768
        case "Cubic Foot": return num * 0.1336804926
        case "Cubic inch": return num * 230.99989113
        default: return 0.0
        }
    }
}

struct Quart {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Cubic meter": return num * 0.0009463525
        case "Liter": return num * 0.9463525
        case "Milliliter": return num * 946.3525
        case "Gallon": return num * 0.25
        case "Quart": return num * 1
        case "Pint": return num * 2
        case "Cup": return num * 4
        case "Fluid Ounce": return num * 32
        case "Tablespoon": return num * 64
        case "Teaspoon": return num * 192
        case "Cubic Foot": return num * 0.0334201231
        case "Cubic inch": return num * 57.749972783
        default: return 0.0
        }
    }
}

struct Pint {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Cubic meter": return num * 0.0004731763
        case "Liter": return num * 1.76
        case "Milliliter": return num * 473.17625
        case "Gallon": return num * 0.125
        case "Quart": return num * 0.5
        case "Pint": return num * 1
        case "Cup": return num * 2
        case "Fluid Ounce": return num * 16
        case "Tablespoon": return num * 32
        case "Teaspoon": return num * 96
        case "Cubic Foot": return num * 0.0167100616
        case "Cubic Inch": return num * 28.874986392
        default: return 0.0
        }
    }
}

struct Cup {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Cubic meter": return num * 0.0002365881
        case "Liter": return num * 0.236588125
        case "Milliliter": return num * 236.588125
        case "Gallon": return num * 0.0625
        case "Quart": return num * 0.25
        case "Pint": return num * 0.5
        case "Cup": return num * 1
        case "Fluid Ounce": return num * 8
        case "Tablespoon": return num * 16
        case "Teaspoon": return num * 48
        case "Cubic Foot": return num * 0.0083550308
        case "Cubic Inch": return num * 14.437493196
        default: return 0.0
        }
    }
}

struct FluidOunce {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Cubic meter": return num * 0.0000295735
        case "Liter": return num * 0.0295735156
        case "Milliliter": return num * 29.573515625
        case "Gallon": return num * 0.0078125
        case "Quart": return num * 0.03125
        case "Pint": return num * 0.0625
        case "Cup": return num * 0.125
        case "Fluid ounce": return num * 1
        case "Tablespoon": return num * 2
        case "Teaspoon": return num * 6
        case "Cubic foot": return num * 0.0010443788
        case "Cubic inch": return num * 1.8046866495
        default: return 0.0
        }
    }
}

struct Tablespoon {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Cubic meter": return num * 0.0000147868
        case "Liter": return num * 0.0147867578
        case "Milliliter": return num * 14.786757812
        case "Gallon": return num * 0.00390625
        case "Quart": return num * 0.015625
        case "Pint": return num * 0.03125
        case "Cup": return num * 0.0625
        case "Fluid ounce": return num * 0.5
        case "Tablespoon": return num * 1
        case "Teaspoon": return num * 3
        case "Cubic foot": return num * 0.0005221894
        case "Cubic inch": return num * 0.9023433247
        default: return 0.0
        }
    }
}

struct Teaspoon {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Cubic meter": return num * 0.0000049289
        case "Liter": return num * 0.0049289193
        case "Milliliter": return num * 4.9289192708
        case "Gallon": return num * 0.0013020833
        case "Quart": return num * 0.0052083333
        case "Pint": return num * 0.0104166667
        case "Cup": return num * 0.0208333333
        case "Fluid ounce": return num * 0.1666666667
        case "Tablespoon": return num * 0.3333333333
        case "Teaspoon": return num * 1
        case "Cubic foot": return num * 0.0001740631
        case "Cubic inch": return num * 0.3007811082
        default: return 0.0
        }
    }
}

struct CubicFoot {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Cubic meter": return num * 0.0283168466
        case "Liter": return num * 28.316846592
        case "Milliliter": return num * 28316.846592
        case "Gallon": return num * 7.480523006
        case "Quart": return num * 29.922092024
        case "Pint": return num * 59.844184048
        case "Cup": return num * 119.6883681
        case "Fluid ounce": return num * 957.50694476
        case "Tablespoon": return num * 1915.0138895
        case "Teaspoon": return num * 5745.0416686
        case "Cubic foot": return num * 1
        case "Cubic inch": return num * 1728
        default: return 0.0
        }
    }
}

struct CubicInch {
    var num: Double
    init(numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Cubic meter": return num * 0.0000163871
        case "Liter": return num * 0.016387064
        case "Milliliter": return num * 16.387064
        case "Gallon": return num * 0.0043290064
        case "Quart": return num * 0.0173160255
        case "Pint": return num * 0.034632051
        case "Cup": return num * 0.0692641019
        case "Fluid ounce": return num * 0.5541128153
        case "Tablespoon": return num * 1.1082256305
        case "Teaspoon": return num * 3.3246768915
        case "Cubic foot": return num * 0.0005787037
        case "Cubic inch": return num * 1
        default: return 0.0
        }
    }
}
