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

// -------------------------------------------------------------------------------
// Unicode
// -------------------------------------------------------------------------------

// Special Characters in String Literals

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1f496}"

// Extended Grapheme Clusters

let eAcute = "\u{e9}"
let combinedEAcute = "\u{65}\u{301}"

let precomposed: Character = "\u{D55C}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"

// -------------------------------------------------------------------------------
// Counting Characters
// -------------------------------------------------------------------------------

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.characters.count) characters")

var word = "cafe"
print("the number of characters in \(word) is \(word.characters.count)")

word += "\u{301}"

print("the number of characters in \(word) is \(word.characters.count)")





