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

// -------------------------------------------------------------------------------
// Nonescaping Closures
// -------------------------------------------------------------------------------

func someFunctionWithNonEscapingClosure(closure: @noescape () -> Void) {
    closure()
}

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: () -> Void) {
    completionHandlers.append(completionHandler)
}

class SomeClass {
    var x = 10
    func doSomething() {
        // Marking a closure with @noescape lets you refer to the self implicitly within the closure.
        // This function does not need to escape because it is called before the function returns.
        someFunctionWithNonEscapingClosure{ x = 200 }
        
        // The closure needs to escape because it is called after the function returns.
        someFunctionWithEscapingClosure{ self.x = 100 }
    }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)

completionHandlers.first?()
print(instance.x)

// -------------------------------------------------------------------------------
// Autoclosures
// -------------------------------------------------------------------------------

var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)

// Call serve with a closure.
func serve(customer customerProvider: () -> String) {
    print(customerProvider())
}
serve(customer: { customersInLine.remove(at: 0) })

// Call serve as if it takes a string.
func serve(customer customerProvider: @autoclosure () -> String) {
    print(customerProvider())
}
serve(customer: customersInLine.remove(at: 0))

// Escaping autoclosure

var customerProviders: [() -> String] = []
func collectCustomerProviders(_ customerProvider: @autoclosure(escaping) () -> String) {
    customerProviders.append(customerProvider)
}
collectCustomerProviders(customersInLine.remove(at: 0))
collectCustomerProviders(customersInLine.remove(at: 0))

print("Collected \(customerProviders.count) closures")
for customerProvider in customerProviders {
    print("Now serving \(customerProvider())")
}














