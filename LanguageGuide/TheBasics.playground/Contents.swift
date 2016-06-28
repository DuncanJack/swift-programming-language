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
