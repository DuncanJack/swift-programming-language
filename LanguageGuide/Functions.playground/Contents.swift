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








