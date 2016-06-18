// -------------------------------------------------------------------------------
// Enumeration Syntax
// -------------------------------------------------------------------------------

enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum City {
    case glasgow, sanFrancisco, losAngeles
}

var directionToHead = CompassPoint.west

directionToHead = .east

// -------------------------------------------------------------------------------
// Matching Enumeration Values with a Switch Statement
// -------------------------------------------------------------------------------

directionToHead = .south

switch directionToHead {
case .north:
    print("Nord")
case .south:
    print("Sud")
case .east:
    print("Est")
case .west:
    print("Ouest")
}

let someCity = City.sanFrancisco

switch someCity {
case .glasgow:
    print("Scotland")
default:
    print("not Scotland")
}

// -------------------------------------------------------------------------------
// Associated Values
// -------------------------------------------------------------------------------

enum Barcode {
    case upc(Int,Int,Int,Int)
    case qrCode(String)
}

var barcode = Barcode.upc(1,2,3,4)
barcode = .qrCode("ABC")

switch barcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
case .qrCode(let productCode):
    print("QR Code: \(productCode)")
}

// -------------------------------------------------------------------------------
// Raw Values
// -------------------------------------------------------------------------------

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

print(ASCIIControlCharacter.carriageReturn.rawValue)

// Implicitly Assigned Raw Values

enum Planet: Int {
    case mercury = 1, venus, earth
}

print("\(Planet.mercury) \(Planet.mercury.rawValue)")
print("\(Planet.venus) \(Planet.venus.rawValue)")
print("\(Planet.earth) \(Planet.earth.rawValue)")

enum State: String {
    case california, texas
}

print("\(State.california) \(State.california.rawValue)")
print("\(State.texas) \(State.texas.rawValue)")

// Initializing from a Raw Value

let possiblePlanet: Planet? = Planet(rawValue: 2)

let rawValueToFind = 3
if let somePlanet = Planet(rawValue: rawValueToFind) {
    switch somePlanet {
    case .earth:
        print("Earth")
    default:
        print("Not earth")
    }
} else {
    print("There is no Planet with a rawValue of \(rawValueToFind)")
}

// -------------------------------------------------------------------------------
// Recursive Enumerations
// -------------------------------------------------------------------------------

enum Expression {
    case number(Int)
    indirect case addition(Expression, Expression)
    indirect case multiplication(Expression, Expression)
}

indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch(expression) {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate((product)))

print(2)













