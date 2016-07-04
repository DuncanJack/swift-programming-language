// -------------------------------------------------------------------------------
// Subscript Syntax
// -------------------------------------------------------------------------------

struct TimesTable {
    let multiplier: Int
    subscript(index:Int) -> Int{
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")

// -------------------------------------------------------------------------------
// Subscript Usage
// -------------------------------------------------------------------------------

var numberOfLegs = ["spider":8, "ant": 6, "cat": 4]
numberOfLegs["bird"] = 2