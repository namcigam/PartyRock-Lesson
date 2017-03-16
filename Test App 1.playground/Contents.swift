//: Playground - noun: a place where people can p
import UIKit

var thing = ["hello", "hows it going", "goodbye"]
var other: [String] = ["good morning", "good night"]

thing.append("hey")

print(thing)

print(thing)

thing.count

repeat {
    thing.remove(at: 0)
} while (0 < thing.count)

print(thing)


var oddNumbers: [Int] = []
print(oddNumbers)

var x = 1

for i in 1...100
{
    if (i % 2) == 0
    {
        //print("true")
    }
    else
    {
        oddNumbers.append(i)
    }
}

print(oddNumbers)
oddNumbers.count

var sums: [Int] = []

for i in 0..<oddNumbers.count {
    sums.append(oddNumbers[i] + 5)
}

for i in 0..<sums.count {
    print("The Sum is: \(sums[i])")
}

//for i in 1...100 {
//    if i /  2 == 0 {
//
//    } else {
//    print(i)
//}
//}


var lotteryWinnings: Int?

if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

class Car {
    var model: String?
    
}

var vehicle: Car?

//if let v = vehicle {
//    if let m = v.model {
//       print(m)
//    }
//}
vehicle = Car()
vehicle?.model = "bronco"

if let v = vehicle, let m = v.model {
    print(m)
}

var cars: [Car]?

cars = [Car]()

if let carArr = cars , carArr.count > 0 {
    
} else {
    cars?.append(Car())
    print(cars?.count)
    
}

class Person {
    private var _age: Int!
    
    var age: Int {
        if _age == nil {
            _age = 0
        }
        return _age
    }
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
}

var jack = Person()

class Dog {
    var species: String
    
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

var lab = Dog(someSpecies: "Black Lab")
print(lab.species)


class Vehicle {
    var tires = 4
    var headLights = 2
    var horsepower = 468
    var make: String = ""
    var model: String = ""
    var currentSpeed: Double = 0
    init() {
        print("I am the parent")
    }
    func drive (speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    
    func brake() {
    
    }
}

class SportsCar: Vehicle {
    override init() {
        super.init()
        print("I am the child")
        make = "bmw"
        model = "3 series"
    }
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 3
    }
}

class Truck: Vehicle  {
    override init() {
        super.init()
        print("I am the child")
        make = "ford"
        model = "F150"

    }
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 1.4
    }
}

class Shape {
    var area: Double?
    
    func calculateArea(valA: Double, valB: Double)  {
        area = valA * valB
    }
}

class Triagle: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB) / 2
    }
}


let car = SportsCar()


let bmw = Vehicle()
bmw.model = "328i"
bmw.horsepower = 250

let ford = Vehicle()
ford.model = "F150"

ford.brake()

func passByReference(vehicle: Vehicle) {
    vehicle.model = "Cheese"
}

print(ford.model)

passByReference(vehicle: ford)

print(ford.model)

func passByValue(age: Vehicle) {
    age = 10
    
}












