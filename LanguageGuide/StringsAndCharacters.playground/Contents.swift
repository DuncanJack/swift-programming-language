// -------------------------------------------------------------------------------
// String Literals
// -------------------------------------------------------------------------------

let someString = "Some string literal value"

// -------------------------------------------------------------------------------
// Initializing an Empty String
// -------------------------------------------------------------------------------

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nothing to see here")
}

// -------------------------------------------------------------------------------
// String Mutability
// -------------------------------------------------------------------------------

var variableString = "Horse"
variableString += " and carriage"

let constantString = "Highlander"

// -------------------------------------------------------------------------------
// Strings Are Value Types
// -------------------------------------------------------------------------------

// -------------------------------------------------------------------------------
// Working with Characters
// -------------------------------------------------------------------------------

for character in "Dog!🐶".characters {
    print(character)
}

let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)

// -------------------------------------------------------------------------------
// Concatenating Strings and Characters
// -------------------------------------------------------------------------------

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

welcome.append(exclamationMark)

// -------------------------------------------------------------------------------
// String Interpolation
// -------------------------------------------------------------------------------

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"