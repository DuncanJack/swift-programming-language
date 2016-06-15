// -------------------------------------------------------------------------------
// Defining and Calling Functions
// -------------------------------------------------------------------------------

func greet(person:String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

print(greet(person: "Duncan"));

// -------------------------------------------------------------------------------
// Function Parameters and Return Values
// -------------------------------------------------------------------------------

// Functions Without Parameters

func sayHelloWorld() -> String {
    return "hello, world"
}

print(sayHelloWorld())

// Functions With Multiple Parameters

func greet(person:String, alreadyGreeted:Bool) -> String {
    if alreadyGreeted {
        return "Hello again " + person
    } else {
        return "Hello " + person
    }
}

greet(person: "Manju", alreadyGreeted: false)
_ = greet(person: "Manju", alreadyGreeted: true)    // explicitly ignore return value

// Functions Without Return Values

func salut(person:String) {
    print("Hello \(person)")
}

salut(person: "Tim")

// Functions With Multiple Return Values

func minMax(array:[Int]) -> (min:Int,max:Int){
    return (1,2)
}

let bounds = minMax(array: [1,2,3])
print("min is \(bounds.min) and max is \(bounds.max)")

// Optional Tuple Return Types

func minMaxNil(array:[Int]) -> (min:Int,max:Int)? {
    return nil
}

if let bounds = minMaxNil(array: [1,2,3]) {
    print("bounds is not nil")
} else {
    print("bounds is nil")
}

// -------------------------------------------------------------------------------
// Function Argument Labels and Parameter Names
// -------------------------------------------------------------------------------








