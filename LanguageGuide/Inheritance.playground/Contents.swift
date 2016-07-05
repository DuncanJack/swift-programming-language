// -------------------------------------------------------------------------------
// Defining a Base Class
// -------------------------------------------------------------------------------

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "travelling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        
    }
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")

// -------------------------------------------------------------------------------
// Subclassing
// -------------------------------------------------------------------------------

class Bicycle : Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15
print("Bicycle: \(bicycle.description)")

class Tandem : Bicycle {
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true;
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22
print("Tandem: \(tandem.description)")

// -------------------------------------------------------------------------------
// Overriding
// -------------------------------------------------------------------------------

// Overriding Methods

class Train: Vehicle {
    override func makeNoise() {
        print("Choo choo")
    }
}

let train = Train()
train.makeNoise()

// Overriding Properties

class Car : Vehicle {
   var gear = 1
    override var description: String{
        return ""
    }
}




