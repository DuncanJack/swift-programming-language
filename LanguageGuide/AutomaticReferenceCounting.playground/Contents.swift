// -------------------------------------------------------------------------------
// ARC in Action
// -------------------------------------------------------------------------------

class Personne {
    let name: String
    init(name:String){
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

var reference1: Personne?
var reference2: Personne?
var reference3: Personne?

reference1 = Personne(name:"John Appleseed")
reference2 = reference1
reference3 = reference2

reference1 = nil
reference2 = nil
reference3 = nil

// -------------------------------------------------------------------------------
// Strong Reference Cycles Between Class Instances
// -------------------------------------------------------------------------------

class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}

class Apartment {
    let unit: String
    init(unit: String) {self.unit = unit }
    var tenant: Person?
    deinit { print("Apartment \(unit) is being deinitialized") }
}

var john: Person?
var unit4A: Apartment?

john = Person(name: "John Appleseed")
unit4A = Apartment(unit: "4A")

// This would leave each object with a strong reference to the other
// john!.apartment = unit4A
// unit4A!.tenant = john
john = nil
unit4A = nil