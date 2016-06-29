// -------------------------------------------------------------------------------
// Assignment Operator
// -------------------------------------------------------------------------------

let ten = 10
let (x,y) = (1,"S")

// -------------------------------------------------------------------------------
// Arithmetic Operators
// -------------------------------------------------------------------------------

1+1
1-1
1/1
1*1

// Remainder Operator

9 % 4
9 % -4
-9 % 4
-9 % -4

// Unary Minus Operator

let three = 3
let minusThree = -three
let plusThree = -minusThree

// Unary Plus Operator

let minusSix = -6
let alsoMinusSix = +minusSix

// -------------------------------------------------------------------------------
// Compound Assignment Operators
// -------------------------------------------------------------------------------

var a = 1
a += 2
a -= 1
a *= 2
a /= 2

// -------------------------------------------------------------------------------
// Comparison Operators
// -------------------------------------------------------------------------------

1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

(1, "zebra") < (2, "apple")
(3, "apple") < (3, "apple")
(4, "dog") == (4, "dog")

// -------------------------------------------------------------------------------
// Ternary Conditional Operator
// -------------------------------------------------------------------------------

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

// -------------------------------------------------------------------------------
// Nil-Coalescing Operator
// -------------------------------------------------------------------------------

let defaultColorName = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName

// -------------------------------------------------------------------------------
// Range Operators
// -------------------------------------------------------------------------------

// Closed Range Operator

for index in 1...5 {
    print(index)
}

// Half-Open Range Operator

let names = ["A", "B", "C", "D"]
for i in 0..<names.count {
    print("Person \(i) is called \(names[i])")
}

// -------------------------------------------------------------------------------
// Logical Operators
// -------------------------------------------------------------------------------

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

// Combining Logical Operators

let enteredDoorCode = false
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

// Explicit Parentheses

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}




