// -------------------------------------------------------------------------------
// Stored Properties
// -------------------------------------------------------------------------------

struct FixedLengthRange {
    var firstValue: Int
    var length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
print(rangeOfThreeItems)
rangeOfThreeItems.firstValue = 6
print(rangeOfThreeItems)

// Stored Properties of Constant Structure Instances

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

// Lazy Stored Properties

class DataImporter {
    var fileName = "data.txt"
    init(){
        print("DataImporter.init")
    }
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// The DataImporter instance is not created until manager.importer is accessed.
// print(manager.importer.fileName)

// -------------------------------------------------------------------------------
// Computed Properties
// -------------------------------------------------------------------------------

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y:centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y:0.0), size: Size(width: 10.0, height: 10.0))
print(square)
let initialSquareCenter = square.center
square.center = Point(x:15.0, y: 15.0)
print(square)

// Shorthand Setter Declaration

struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

// Read-only Computed Properties

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}
let cuboid = Cuboid(width: 4, height: 4, depth: 2)
print("volume: \(cuboid.volume)")

// -------------------------------------------------------------------------------
// Property Observers
// -------------------------------------------------------------------------------

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200

// -------------------------------------------------------------------------------
// Global and Local Variables
// -------------------------------------------------------------------------------

// -------------------------------------------------------------------------------
// Type Properties
// -------------------------------------------------------------------------------

// Type property syntax

struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}

enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var someComputedProperty: Int {
        return 1
    }
}

class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
    class var overrideableComputedTypeProperty: Int {
        return 2
    }
}

// Querying and Setting Type Properties

print(SomeStructure.storedTypeProperty)
SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)

print(SomeEnumeration.someComputedProperty)

print(SomeClass.computedTypeProperty)

struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                // Cap the new audio level to the threshold level.
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                // Store this as the new overall maximum input level.
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7
print(leftChannel.currentLevel)
print(AudioChannel.maxInputLevelForAllChannels)

rightChannel.currentLevel = 11
print(rightChannel.currentLevel)
print(AudioChannel.maxInputLevelForAllChannels)










