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