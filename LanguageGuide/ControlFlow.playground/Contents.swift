// -------------------------------------------------------------------------------
// For-In Loops
// -------------------------------------------------------------------------------

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}

print("\(base) to the power of \(power) is \(answer)")

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print(name)
}

let numberOfLegs = ["spider":8, "ant":6, "cat":4]
for(animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

// -------------------------------------------------------------------------------
// While Loops
// -------------------------------------------------------------------------------

// While

var finalSquare = 25
var board = [Int](repeating:0, count:finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0

while square < finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    square += diceRoll
    if square < board.count {
        square += board[square]
    }
}
print("Game over!")

// Repeat-While

finalSquare = 25
board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
square = 0
diceRoll = 0

repeat {
    square += board[square]
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    square += diceRoll
} while square < finalSquare
print("Game over!")









