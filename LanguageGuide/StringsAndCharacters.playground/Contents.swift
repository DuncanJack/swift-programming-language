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

// -------------------------------------------------------------------------------
// Accessing and Modifying a String
// -------------------------------------------------------------------------------

// String Indices

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(after: greeting.startIndex)]
greeting[greeting.index(before: greeting.endIndex)]

let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]

for index in greeting.characters.indices {
    print("\(greeting[index]) ", terminator:"")
}

// Inserting and Removing

var wilkommen = "hello"
wilkommen.insert("!", at:wilkommen.endIndex)
wilkommen.insert(contentsOf:" there".characters, at: welcome.index(before: wilkommen.endIndex))

wilkommen.remove(at: wilkommen.index(before: wilkommen.endIndex))
print(wilkommen)

let range = wilkommen.index(welcome.endIndex, offsetBy: -6)..<wilkommen.endIndex
wilkommen.removeSubrange(range)

// -------------------------------------------------------------------------------
// Comparing Strings
// -------------------------------------------------------------------------------

// String and Character Equality

let quotation = "We're alike"
let sameQuotation = "We're alike"
quotation == sameQuotation

let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
eAcuteQuestion == combinedEAcuteQuestion

let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
latinCapitalLetterA == cyrillicCapitalLetterA

// Prefix and Suffix Equality

let romeoAndJuliet = [
"Act 1 Scene 1",
"Act 1 Scene 2",
"Act 2 Scene 1",
"Act 2 Scene 2"
]

var act1SceneCount = 0
var scene2Count = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1
    }
    if scene.hasSuffix("Scene 2") {
        scene2Count += 1
    }
    
}
print("act1SceneCount: \(act1SceneCount)")
print("scene2Count: \(scene2Count)")








