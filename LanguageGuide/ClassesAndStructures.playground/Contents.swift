// -------------------------------------------------------------------------------
// Comparing Classes and Structures
// -------------------------------------------------------------------------------

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

// Classes and Structure Instances

let someResolution = Resolution()
let someVideoMode = VideoMode()

// Accessing Properties

print("someResolution.width \(someResolution.width)")
print("someVideoMode.resolution.width: \(someVideoMode.resolution.width)")

someVideoMode.resolution.width = 1280
print("someVideoMode.resolution.width: \(someVideoMode.resolution.width)")

let vga = Resolution(width: 640, height: 480)

// -------------------------------------------------------------------------------
// Structures and Enumerations Are Value Types
// -------------------------------------------------------------------------------

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048
print("cinema.width: \(cinema.width)")
print("hd.width: \(hd.width)")

enum CompassPoint {
    case north, south, east, west
}

var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection = .east
print("rememberedDirection: \(rememberedDirection)")

// -------------------------------------------------------------------------------
// Classes Are Reference Types
// -------------------------------------------------------------------------------

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
print("tenEighty.frameRate: \(tenEighty.frameRate)")

// Identity Operators

if tenEighty === alsoTenEighty {
    print("tenEighty is the same instance as alsoTenEighty")
}

// -------------------------------------------------------------------------------
// Assignment and Copy Behavior for Strings, Arrays and Dictionaries
// -------------------------------------------------------------------------------
