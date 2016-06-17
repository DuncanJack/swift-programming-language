// -------------------------------------------------------------------------------
// Closure Expressions
// -------------------------------------------------------------------------------

// The Sorted Method

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"];

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames = names.sorted(isOrderedBefore: backward)

// Closure Expression Syntax

reversedNames = names.sorted(isOrderedBefore: {(s1:String, s2:String) -> Bool in
    return s1 > s2
})

// Inferring Type From Context

reversedNames = names.sorted(isOrderedBefore: {s1, s2 in return s1 > s2})

// Implicit Returns from Single-Expression Closures

reversedNames = names.sorted(isOrderedBefore: {s1, s2 in s1 > s2})

// Shorthand Argument Names

reversedNames = names.sorted(isOrderedBefore: { $0 > $1 })

// Operator Functions

reversedNames = names.sorted(isOrderedBefore: > )

// -------------------------------------------------------------------------------
// Trailing Closures
// -------------------------------------------------------------------------------

reversedNames = names.sorted(){ $0 > $1 }

reversedNames = names.sorted{ $0 > $1 }

let digitNames = [0:"Zero", 1:"One", 2:"Two", 3:"Three", 4:"Four", 5:"Five", 6:"Six", 7:"Seven", 8:"Eight", 9:"Nine", 10:"Ten"]
let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    while number > 0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}

// -------------------------------------------------------------------------------
// Capturing Values
// -------------------------------------------------------------------------------

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen: () -> Int = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

makeIncrementer(forIncrement: 7)()

incrementByTen()

// -------------------------------------------------------------------------------
// Closures Are Reference Types
// -------------------------------------------------------------------------------

let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()



















