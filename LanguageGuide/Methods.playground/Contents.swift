// -------------------------------------------------------------------------------
// Instance Methods
// -------------------------------------------------------------------------------

class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset(){
        count = 0
    }
}

let counter = Counter()
counter.increment()
counter.increment(by: 5)
counter.reset()

// The self property

struct Point {
    var x = 0.0
    var y = 0.0
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}

let somePoint = Point(x: 4.0, y: 5.0)
if(somePoint.isToTheRightOf(x: 1.0)) {
    print("This point is to the right of the line where x = 1.0")
}

// Modifying Value Types from Within Instance Methods

struct Punkt {
    var x = 0.0
    var y = 0.0
    mutating func moveBy(x deltaX:Double, y deltaY:Double){
        x += deltaX
        y += deltaY
    }
}

var einPunkt = Punkt(x:1.0, y:1.0)
einPunkt.moveBy(x: 2.0, y: 3.0)
print("Jetzt: (\(einPunkt.x), \(einPunkt.y))")

// Assigning to self Within a Mutating Method

struct Punto {
    var x = 0.0
    var y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double){
        self = Punto(x: x + deltaX, y: y + deltaY)
    }
}

enum TriStateSwitch {
    case off
    case low
    case high
    
    mutating func next() {
        switch self {
        case off:
            self = low
        case low:
            self = high
        case high:
            self = off
        }
    }
}

var ovenLight = TriStateSwitch.low
ovenLight.next()
ovenLight.next()














