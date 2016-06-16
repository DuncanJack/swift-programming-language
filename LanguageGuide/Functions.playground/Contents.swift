// -------------------------------------------------------------------------------
// Defining and Calling Functions
// -------------------------------------------------------------------------------

func greet(person:String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

print(greet(person: "Duncan"));

// -------------------------------------------------------------------------------
// Function Parameters and Return Values
// -------------------------------------------------------------------------------

// Functions Without Parameters

func sayHelloWorld() -> String {
    return "hello, world"
}

print(sayHelloWorld())

// Functions With Multiple Parameters

func greet(person:String, alreadyGreeted:Bool) -> String {
    if alreadyGreeted {
        return "Hello again " + person
    } else {
        return "Hello " + person
    }
}

greet(person: "Manju", alreadyGreeted: false)
_ = greet(person: "Manju", alreadyGreeted: true)    // explicitly ignore return value

// Functions Without Return Values

func salut(person:String) {
    print("Hello \(person)")
}

salut(person: "Tim")

// Functions With Multiple Return Values

func minMax(array:[Int]) -> (min:Int,max:Int){
    return (1,2)
}

let bounds = minMax(array: [1,2,3])
print("min is \(bounds.min) and max is \(bounds.max)")

// Optional Tuple Return Types

func minMaxNil(array:[Int]) -> (min:Int,max:Int)? {
    return nil
}

if let bounds = minMaxNil(array: [1,2,3]) {
    print("bounds is not nil")
} else {
    print("bounds is nil")
}

// -------------------------------------------------------------------------------
// Function Argument Labels and Parameter Names
// -------------------------------------------------------------------------------

func someFunction(firstParamaterName: Int, secondParameterName: Int) {
}

someFunction(firstParamaterName: 1, secondParameterName: 2)

// Specifying Arguments Labels

func someFunction(argumentLabel parameterName: Int) {
    
}

someFunction(argumentLabel: 1)

func greet(person:String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown)"
}

print(greet(person: "Bill", from: "Cupertino"))

// Ommitting Argument Labels

func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    
}

someFunction(1, secondParameterName: 2)

func someFunction(_ firstParameterName: Int, _ secondParameterName: Int) {
    
}

someFunction(1,2)

// Default Parameter Values

func someFunction(parameterWithDefault: Int = 12){
    
}

someFunction(parameterWithDefault: 6)

someFunction()

// Variadic Parameters (max 1 per function)

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(1,2,3)

// In-Out Parameters

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

// -------------------------------------------------------------------------------
// Function Types
// -------------------------------------------------------------------------------

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

// Using Function Types

var mathFunction: (Int,Int) -> Int = addTwoInts

print("Result: \(mathFunction(2,3))")

let anotherMathFunction = addTwoInts

// Function Types as Parameter Types

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a,b))")
}

printMathResult(addTwoInts, 3, 5)

// Function Types as Return Types

func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

print("Counting to zero:")
while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}

// -------------------------------------------------------------------------------
// Nested Functions
// -------------------------------------------------------------------------------

func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}

var currentVal = -4
let moveNearerToZero2 = chooseStepFunction2(backward: currentVal > 0)
while currentVal != 0 {
    print("\(currentVal)...")
    currentVal = moveNearerToZero2(currentVal)
}



