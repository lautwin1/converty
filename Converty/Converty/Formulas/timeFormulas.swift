
// Conversions can varry depending on the month.
// Conversions from https://www.unitconverters.net/
// Conversions can get less and less accurate the larger the time gap


import Foundation

struct Millisecond {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Millisecond": return num * 1
        case "Second": return num * 0.001
        case "Minute": return num * 0.0000166667
        case "Hour": return num * 0.0000002777777
        case "Day": return num * 0.0000000115740
        case "Week": return num * 0.0000000016534
        case "Month": return num * 0.0000000003802
        case "Calendar Year": return num * 0.0000000000316
        default: return 0.0
        }
    }
}

struct Second {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Millisecond": return num * 1000
        case "Second": return num * 1
        case "Minute": return num * 0.0166666667
        case "Hour": return num * 0.0002777778
        case "Day": return num * 0.0000115741
        case "Week": return num * 0.0000016534
        case "Month": return num *  0.0000003802570
        case "Calendar Year": return num * 0.0000000316880
        default: return 0.0
        }
    }
}

struct Minute {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Millisecond": return num * 60000
        case "Second": return num * 60
        case "Minute": return num * 1
        case "Hour": return num * 0.0166666667
        case "Day": return num * 0.0006944444
        case "Week": return num * 0.0000992063
        case "Month": return num * 0.0000228154
        case "Calendar Year": return num * 0.0000019013
        default: return 0.0
        }
    }
}

struct Hour {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Millisecond": return num * 36000000
        case "Second": return num * 3600
        case "Minute": return num * 60
        case "Hour": return num * 1
        case "Day": return num * 0.0416666667
        case "Week": return num * 0.005952381
        case "Month": return num * 0.0013689254
        case "Calendar Year": return num * 0.0001140771
        default: return 0.0
        }
    }
}

struct Day {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Millisecond": return num * 86400000
        case "Second": return num * 86400
        case "Minute": return num * 1440
        case "Hour": return num * 24
        case "Day": return num * 1
        case "Week": return num * 0.1428571429
        case "Month": return num * 0.0328542094
        case "Calendar Year": return num * 0.0027378508
        default: return 0.0
        }
    }
}

struct Week {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Millisecond": return num * 604800000
        case "Second": return num * 604800
        case "Minute": return num * 10080
        case "Hour": return num * 168
        case "Day": return num * 7
        case "Week": return num * 1
        case "Month": return num * 0.2299794661
        case "Calendar Year": return num * 0.0191649555
        default: return 0.0
        }
    }
}

struct Month {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Millisecond": return num * 2629800000
        case "Second": return num * 2629800
        case "Minute": return num * 43800
        case "Hour": return num * 730.5
        case "Day": return num * 30.4375
        case "Week": return num * 4.3482142857
        case "Month": return num * 1
        case "Calendar Year": return num * 0.0833333333
        default: return 0.0
        }
    }
}

struct Year {
    var num: Double
    init (numToConvert: Double) { num = numToConvert }
    
    func getConversion(unit: String) -> Double {
        switch unit {
        case "Millisecond": return num * 31557600000
        case "Second": return num * 31557600
        case "Minute": return num * 525960
        case "Hour": return num * 8766
        case "Day": return num * 365.25
        case "Week": return num * 52.178571429
        case "Month": return num * 12
        case "Calendar Year": return num * 1
        default: return 0.0
        }
    }
}
