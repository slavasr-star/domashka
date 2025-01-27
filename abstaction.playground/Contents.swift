import UIKit

class Vehicle {
    var name: String
    
    init(name: String) {
        self.name = name
    }
  
    func drive() {
        print("\(name) движется.")
    }
}

class Car: Vehicle {
    override func drive() {
        print("\(name) едет по дороге.")
    }
}


class Bicycle: Vehicle {
    override func drive() {
        print("\(name) едет на велосипеде.")
    }
}

class Boat: Vehicle {
    override func drive() {
        print("\(name) плывёт по воде.")
    }
}

let car = Car(name: "Автомобиль")
let bicycle = Bicycle(name: "Велосипед")
let boat = Boat(name: "Лодка")

let vehicles: [Vehicle] = [car, bicycle, boat]


for vehicle in vehicles {
    vehicle.drive()
}
