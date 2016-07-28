// -------------------------------------------------------------------------------
// Representing and Throwing Errors
// -------------------------------------------------------------------------------

enum VendingMachineError: ErrorProtocol {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

// throw VendingMachineError.insufficientFunds(coinsNeeded: 5)

// -------------------------------------------------------------------------------
// Handling Errors
// -------------------------------------------------------------------------------

// Propogating Errors Using Throwing Functions

func canThrowErrors() throws -> String {
    return ""
}

struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0
    
    func vend(itemNamed name: String) throws  {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
    }
}

let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels"
]

func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}

struct PurchasedSnack {
    let name: String
    init(name: String, vendingMachine: VendingMachine) throws {
        try vendingMachine.vend(itemNamed: name)
        self.name = name
    }
}

// Handling Errors Using Do-Catch

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8
do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
} catch VendingMachineError.invalidSelection {
    print("Invalid Selection.")
} catch VendingMachineError.outOfStock {
    print("Out of Stock.")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
    print("Insufficient funds, Please insert an additional \(coinsNeeded) coins.")
}

// Converting Errors to Optional Values

func someThrowingFunction() throws -> Int {
    throw VendingMachineError.outOfStock
}

let x = try? someThrowingFunction()

let y: Int?
do {
    y = try someThrowingFunction()
} catch {
    y = nil
}

print(y)

class Data {}

func fetchData() -> Data? {
    func fetchDataFromDisk() throws -> Data? { return nil }
    func fetchDataFromServer() throws -> Data? { return nil }
    
    if let data = try? fetchDataFromDisk() { return data }
    if let data = try? fetchDataFromServer() { return data }
    return nil
}

print(fetchData())

// Disabling Error Propogation

func load(_ shouldThrow:Bool) throws -> Data? {
    if(shouldThrow) {
        throw VendingMachineError.outOfStock
    }
    return Data()
}

let data = try! load(false)









