import Foundation

class Employee {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    // Абстрактный метод
    func calculateSalary() -> Double {
        fatalError("Этот метод должен быть переопределен в подклассах")
    }
}


class HourlyEmployee: Employee {
    var hourlyRate: Double
    var hoursWorked: Double
    
    init(name: String, hourlyRate: Double, hoursWorked: Double) {
        self.hourlyRate = hourlyRate
        self.hoursWorked = hoursWorked
        super.init(name: name)
    }
    
    override func calculateSalary() -> Double {
        return hourlyRate * hoursWorked
    }
}

class MonthlyEmployee: Employee {
    var monthlySalary: Double
    
    init(name: String, monthlySalary: Double) {
        self.monthlySalary = monthlySalary
        super.init(name: name)
    }
    
    override func calculateSalary() -> Double {
        return monthlySalary
    }
}

class ContractEmployee: Employee {
    var contractAmount: Double
    
    init(name: String, contractAmount: Double) {
        self.contractAmount = contractAmount
        super.init(name: name)
    }
    
    override func calculateSalary() -> Double {
        return contractAmount
    }
}

let hourlyEmployee = HourlyEmployee(name: "Иван", hourlyRate: 20.0, hoursWorked: 160)
let monthlyEmployee = MonthlyEmployee(name: "Анна", monthlySalary: 3000.0)
let contractEmployee = ContractEmployee(name: "Ольга", contractAmount: 5000.0)

print("\(hourlyEmployee.name): зарплата = \(hourlyEmployee.calculateSalary())")
print("\(monthlyEmployee.name): зарплата = \(monthlyEmployee.calculateSalary())")
print("\(contractEmployee.name): зарплата = \(contractEmployee.calculateSalary())")
