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
// Floating-Point Numbers
// -------------------------------------------------------------------------------

var myDouble:Double;
var myFloat:Float;

// -------------------------------------------------------------------------------
// Numeric Literals
// -------------------------------------------------------------------------------

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let a = 1.25e+2 // 1.25 x 10^+2
let b = 1.25e-2 // 1.25 x 10^-2

let hexadecimalWithExponent1 = 0xFp+2 // 15 X 2^+2
let hexadecimalWithExponent2 = 0xFp-2 // 15 x 2^-2

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// -------------------------------------------------------------------------------
// Numeric Type Conversion
// -------------------------------------------------------------------------------

// Integer Conversion

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(16)

// Integer and Floating-Point Conversion

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
let integerPi = Int(pi)

// -------------------------------------------------------------------------------
// Type Aliases
// -------------------------------------------------------------------------------

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
