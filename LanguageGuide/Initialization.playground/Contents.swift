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

class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()

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







