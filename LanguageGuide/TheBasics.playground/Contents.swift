// -------------------------------------------------------------------------------
// Optionals
// -------------------------------------------------------------------------------

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

// If Statements and Forced Unwrapping

if convertedNumber != nil {
    print("\(convertedNumber)")
    print("\(convertedNumber!)")
}

// Optional Binding

if let actualNumber = Int(possibleNumber){
    print("\(actualNumber)")
}

if let firstNumber = Int("1"), secondNumber = Int("2") where firstNumber < secondNumber{
    print("\(firstNumber)" < "\(secondNumber)")
}

// Implicitly Unwrapped Optionals

let possibleString: String? = "An optional string"
let forcedString: String! = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string"
let implicitString: String = assumedString
