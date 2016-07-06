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

//