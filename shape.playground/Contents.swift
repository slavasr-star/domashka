import UIKit

class Shape {
    private var color: UIColor
    private var x: Double
    private var y: Double

    init(color: UIColor, x: Double, y: Double) {
        self.color = color
        self.x = x
        self.y = y
    }

    func display() {
        print("Цвет: \(color.description), Центр: (\(x), \(y))")
    }
}

class Circle: Shape {
    private var radius: Double

    init(color: UIColor, x: Double, y: Double, radius: Double) {
        self.radius = radius
        super.init(color: color, x: x, y: y)
    }

    override func display() {
        super.display()
        print("Радиус: \(radius)")
    }
}

class Rectangle: Shape {
    private var width: Double
    private var height: Double

    init(color: UIColor, x: Double, y: Double, width: Double, height: Double) {
        self.width = width
        self.height = height
        super.init(color: color, x: x, y: y)
    }

    override func display() {
        super.display()
        print("Ширина: \(width), Высота: \(height)")
    }
}

class Triangle: Shape {
    private var base: Double
    private var height: Double

    init(color: UIColor, x: Double, y: Double, base: Double, height: Double) {
        self.base = base
        self.height = height
        super.init(color: color, x: x, y: y)
    }

    override func display() {
        super.display()
        print("Основание: \(base), Высота: \(height)")
    }
}

let circle = Circle(color: .red, x: 10, y: 15, radius: 5)
circle.display()

let rectangle = Rectangle(color: .blue, x: 20, y: 25, width: 10, height: 15)
rectangle.display()

let triangle = Triangle(color: .green, x: 5, y: 10, base: 8, height: 12)
triangle.display()
