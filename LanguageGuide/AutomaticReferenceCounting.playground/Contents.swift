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
// Resolving Strong Reference Cycles Between Class Instances
// -------------------------------------------------------------------------------

// Weak References

class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}

class Apartment {
    let unit: String
    init(unit: String) {self.unit = unit }
    weak var tenant: Person?    // weak, not unowned, because an apartment may or may not have a tenant
    deinit { print("Apartment \(unit) is being deinitialized") }
}

var john: Person?
var unit4A: Apartment?

john = Person(name: "John Appleseed")
unit4A = Apartment(unit: "4A")

john!.apartment = unit4A
unit4A?.tenant = john
john = nil
unit4A = nil

// Unowned References

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer  // unowned, not weak, because a credit card always has a customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit {
        print("Card #\(number) is being deinitialized")
    }
}

var customer: Customer?
customer = Customer(name:"John Appleseed")
customer!.card = CreditCard(number: 1234_1234_1234_1234, customer: customer!)

customer = nil

// Unowned References and Implicitly Unwrapped Optional Properties

class Country {
    let name: String
    var capitalCity: City!
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
    
}

class City {
    let name: String
    unowned let country: Country
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
}

var country = Country(name: "Canada", capitalName: "Ottowa")
print("\(country.name)'s capital city is called \(country.capitalCity.name)")










