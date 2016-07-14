// -------------------------------------------------------------------------------
// Optional Chaining as an Alternative to Forced Unwrapping
// -------------------------------------------------------------------------------

class Person1 {
    var residence: Residence1?
}

class Residence1 {
    var numberOfRooms = 1
}

let john1 = Person1()

if let roomCount = john1.residence?.numberOfRooms {
    print("John's residence has \(roomCount) rooms")
} else {
    print("Unable to retrieve the number of rooms")
}

john1.residence = Residence1()

if let roomCount = john1.residence?.numberOfRooms {
    print("John's residence has \(roomCount) rooms")
} else {
    print("Unable to retrieve the number of rooms")
}

// -------------------------------------------------------------------------------
// Defining Model Classes for Optional Chaining
// -------------------------------------------------------------------------------

class Person {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}

class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if buildingName != nil {
            return buildingName
        } else if buildingNumber != nil && street != nil {
            return "\(buildingNumber) \(street)"
        } else {
            return nil
        }
    }
}

// -------------------------------------------------------------------------------
// Accessing Properties Through Optional Chaining
// -------------------------------------------------------------------------------

let john = Person()
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrive the number of rooms.")
}

let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Acacia Road"
john.residence?.address = someAddress

func createAddress() -> Address {
    print("Function was called.")
    return Address()
}
john.residence?.address = createAddress()

// Attempting to set a property with optional chaining returns Void?
// Compare against nil to see if the property was set.

if(john.residence?.address = someAddress) != nil {
    print("It was possible to set the address.")
} else {
    print("It was not possible to set the address.")
}

// -------------------------------------------------------------------------------
// Calling Methods Through Optional Chaining
// -------------------------------------------------------------------------------

// Calling a Void method with optional chaining returns Void?
// Compare against nil to see if the mthod was called.

if john.residence?.printNumberOfRooms() != nil {
   print("It was possible to print the number of rooms.")
} else {
    print("It was not possible to print the number of rooms.")
}

// -------------------------------------------------------------------------------
// Accessing Subscripts Through Optional Chaining
// -------------------------------------------------------------------------------


















