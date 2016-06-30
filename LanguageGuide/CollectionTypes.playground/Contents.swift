// -------------------------------------------------------------------------------
// Mutability of Collections
// -------------------------------------------------------------------------------

// Creating an Empty Array

var someInts = [Int]()
someInts.append(3)

// Creating an Array with a Default Value

var threeDoubles = Array(repeating: 0.0, count: 3)

// Creating an Array by Adding Two Arrays Together

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles

// Creating an Array with an Array Literal

var shoppingList = ["Eggs","Milk"]

// Accessing and Modifying an Array

shoppingList.count
shoppingList.isEmpty
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six Eggs"
shoppingList[4...6] = ["Bananas","Apples"]
print(shoppingList)
shoppingList.insert("Maple Syrup", at: 0)
let mapleSyrup = shoppingList.remove(at: 0)
firstItem = shoppingList[0]
let apples = shoppingList.removeLast()

// Iterating Over an Array
for item in shoppingList {
    print(item, terminator:"")
}

print("\nenumerated ...")
for (index, value) in shoppingList.enumerated() {
    print("Item \(index): \(value)")
}

// -------------------------------------------------------------------------------
// Sets
// -------------------------------------------------------------------------------

// Creating and Initializing an Empty Set

var lettres = Set<Character>()
lettres.insert("a")
lettres = []

// Creating a Set with an Array Literal

var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]

// Accessing and Modifying a Set

favoriteGenres.count
favoriteGenres.isEmpty
favoriteGenres.insert("Jazz")

if let removedGenre = favoriteGenres.remove("Rock") {
    print("removedGenre: \(removedGenre)")
}

favoriteGenres.contains("Funk")

for genre in favoriteGenres {
    print("\(genre)")
}

for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

// -------------------------------------------------------------------------------
// Performing Set Operations
// -------------------------------------------------------------------------------

// Fundamental Set Operations

let odds:Set = [1,3,5,7,9]
let evens:Set = [0,2,4,6,8]
let primes:Set = [2,3,5,7]

odds.union(evens).sorted()
odds.intersection(evens).sorted()
odds.subtracting(primes).sorted()
odds.symmetricDifference(primes).sorted()

// Set Membership and Equality

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)


















