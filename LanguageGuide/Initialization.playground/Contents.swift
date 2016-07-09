// -------------------------------------------------------------------------------
// Initialization
// -------------------------------------------------------------------------------

// Setting Initial Values for Stored Properties

struct Fahrenheit {
    var temperature: Double
    init(){
        temperature = 32
    }
}

var f = Fahrenheit()
print("The default temperature is \(f.temperature) Fahrenheit")

// Default Property Values

struct Ball {
    var size = 14
}

// -------------------------------------------------------------------------------
// Customizing Initialization
// -------------------------------------------------------------------------------

// Initialization Parameters

struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double){
        temperatureInCelsius = (fahrenheit - 32) / 1.8
    }
    init(fromKelvin kelvin: Double){
        temperatureInCelsius = kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)

// Parameter Names and Argument Labels

struct Color {
    let red, green, blue: Double
    init(red:Double, green:Double,blue:Double){
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white:Double){
        red = white
        green = white
        blue = white
    }
}

let magenta = Color(red: 1, green: 0, blue: 1)
let halfGray = Color(white: 0.5)

// Initializer Parameters Without Argument Labels

struct Centigrade {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double){
        temperatureInCelsius = (fahrenheit - 32) / 1.8
    }
    init(fromKelvin kelvin: Double){
        temperatureInCelsius = kelvin - 273.15
    }
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}
let bodyTemperature = Centigrade(37.0)

// Optional Property Types

class SurveyQuestion {
    var text:String
    var response: String?
    init(text: String){
        self.text = text
    }
    func ask() {
        print(text)
    }
}

let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.ask()
cheeseQuestion.response = "Yes, I do like cheese"

// Assigning Constant Properties During Initialization

class Question {
    let text: String
    var response: String?
    init(text:String){
        self.text = text
    }
    func ask() {
        print(text)
    }
}

let question = Question(text:"Beets?")
question.ask()
question.response = "I also like beets."

// -------------------------------------------------------------------------------
// Default Initializers
// -------------------------------------------------------------------------------

class ShoppingItem {
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingItem()

// Memberwise Initializers for Structure Types

struct Shape {
    var name: String?
    var width = 0.0
    var height = 0.0
}
_ = Shape(name: "Small", width: 1, height: 1)

// -------------------------------------------------------------------------------
// Initializer Delegation for Value Types
// -------------------------------------------------------------------------------

struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    init() {
    }
    init(origin:Point, size:Size) {
        self.origin = origin
        self.size = size
    }
    init(center:Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x:originX,y:originY), size:size)
    }
}
print(Rect())
print(Rect(origin: Point(x:2,y:2), size: Size(width:5,height:5)))
print(Rect(center: Point(x:4,y:4), size: Size(width:3,height:3)))

// -------------------------------------------------------------------------------
// Class Inheritance and Initialization
// -------------------------------------------------------------------------------

// Initializer Inheritance and Overriding

class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheel(s)"
    }
}
let vehicle = Vehicle()
print("Vehicle: \(vehicle.description)")

class Bicycle: Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
    }
}
let bicycle = Bicycle()
print("Bicycle: \(bicycle.description)")

// Designated and Convenience Initializers in Action

class Food {
    var name: String
    init(name: String){
        self.name = name
    }
    convenience init() {
        self.init(name: "Unnamed")
    }
}
let namedMeat = Food(name: "Bacon")
print(namedMeat.name)

let mysteryMeat = Food()
print(mysteryMeat.name)

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name:name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}
let oneMysteryItem = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)

class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? " ✔︎" : " ✘"
        return output
    }
}

var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name:"Bacon"),
    ShoppingListItem(name: "Eggs", quantity: 6)
]

breakfastList[0].name = "Orange juice"
breakfastList[0].purchased = true
for item in breakfastList {
    print(item.description)
}

// -------------------------------------------------------------------------------
// Failable Initializers
// -------------------------------------------------------------------------------

struct Animal {
    let species: String
    init?(species:String){
        if species.isEmpty {return nil}
        self.species = species
    }
}

let someCreature = Animal(species: "Giraffe")

if let giraffe = someCreature {
    print("An animal was initialized with a species of \(giraffe.species)")
}

let anonymousCreature = Animal(species:"")
if anonymousCreature == nil {
    print("The anonymous creature could not be initialized")
}

// Failable Initializers for Enumerations

enum TemperatureUnit {
    case kelvin, celsius, fahrenheit
    init?(symbol:Character) {
        switch symbol {
        case "K":
            self = .kelvin
        case "C":
            self = .celsius
        case "F":
            self = .fahrenheit
        default:
            return nil
        }
    }
}

let fahrenheitUnit = TemperatureUnit(symbol: "F")
if fahrenheitUnit != nil {
    print("Initialization succeeded.")
}

let unknownUnit = TemperatureUnit(symbol: "X")
if unknownUnit == nil {
    print("Initialization failed.")
}

// Failable Initializers for Enumerations with Raw Values

enum TempUnit:Character {
    case kelvin = "K", celsius = "C", fahrenheit = "F"
}

if var fahrenheitUnit = TempUnit(rawValue: "F") {
    print("Initialization succeeded.")
}

if var unknownUnit = TempUnit(rawValue: "U") {} else {
    print("Initialization failed.")
}

// Propagation of Initialization Failure

class Product {
    let name: String
    init?(name:String){
        if name.isEmpty { return nil}
        self.name = name
    }
}

class CartItem: Product {
    let quantity: Int
    init?(name: String, quantity: Int){
        if quantity < 1 { return nil }
        self.quantity = quantity
        super.init(name:name)
    }
}

if let twoSocks = CartItem(name: "sock", quantity: 2) {
    print("Item: \(twoSocks.name), quantity: \(twoSocks.quantity)")
}

if let zeroShirts = CartItem(name: "shirt", quantity: 0) {} else {
    print("Unable to initialize zero shirts")
}

if let oneUnnamed = CartItem(name: "", quantity: 1) {} else {
    print("Unable to initialize one unnamed product")
}

// Overriding a Failable Initializer

class Document {
    var name: String?
    init() {}
    init?(name: String){
        if name.isEmpty { return nil }
        self.name = name
    }
}
let document = Document()

class AutomaticallyNamedDocument: Document {
    override init () {
        super.init()
        self.name = "[Untitled]"
    }
    override init(name: String) {
        super.init()
        if name.isEmpty {
            self.name = "[Untitled]"
        } else {
            self.name = name
        }
    }
}

class UntitledDocument: Document {
    override init() {
        super.init(name: "[Untitled]")! // Note the ! operator
    }
}

// The init! Failable Initializer

class Failable {
    var name: String!
    init!(name: String){
        if name.isEmpty { return nil }
        self.name = name
    }
}
let failed = Failable(name: "")
let failable = Failable(name: "name")

// -------------------------------------------------------------------------------
// Required Initializers
// -------------------------------------------------------------------------------

class SomeClass {
    required init() {
        
    }
}

class SomeSubClass: SomeClass {
    
}

_ = SomeSubClass()

// -------------------------------------------------------------------------------
// Setting a Default Property Value with a Closure or Function
// -------------------------------------------------------------------------------

class Unclass {
    let count: Int = {
        return 1
    }()
}

struct Chessboard {
    let boardColors: [Bool] = {
        var temporaryBoard = [Bool]()
        var isBlack = false
        for i in 1...8 {
            for j in 1...8 {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporaryBoard
    }()
    func squareIsBlackAt(row: Int, column: Int) -> Bool {
        return boardColors[(row * 8) + column]
    }
}

let board = Chessboard()
print(board.squareIsBlackAt(row: 0, column: 1))
print(board.squareIsBlackAt(row: 7, column: 7))



