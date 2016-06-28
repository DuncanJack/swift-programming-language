// -------------------------------------------------------------------------------
// Optionals
// -------------------------------------------------------------------------------

let maximumNumberOfLoginAttempts = 10
var currrentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

var welcomeMessage: String
welcomeMessage = "Hello"

var red, green, blue: Double

let 🐶🐮 = "dogcow"

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
print("friendlyWelcome: \(friendlyWelcome)")

// -------------------------------------------------------------------------------
// Comments
// -------------------------------------------------------------------------------

/* Outer Comment
 
 /* Inner Comment */
 
 // Another Comment
 
 */

// -------------------------------------------------------------------------------
// Semicolons
// -------------------------------------------------------------------------------

let cat = "🐱"; print(cat)

// -------------------------------------------------------------------------------
// Integers
// -------------------------------------------------------------------------------

print("UInt8: \(UInt8.min) \(UInt8.max)")
print("UInt16: \(UInt16.min) \(UInt16.max)")
print("UInt32: \(UInt32.min) \(UInt32.max)")
print("UInt64: \(UInt64.min) \(UInt64.max)")

print("Int8: \(Int8.min) \(Int8.max)")
print("Int16: \(Int16.min) \(Int16.max)")
print("Int32: \(Int32.min) \(Int32.max)")
print("Int64: \(Int64.min) \(Int64.max)")

print("UInt: \(UInt.min) \(UInt.max)")

print("Int: \(Int.min) \(Int.max)")

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
