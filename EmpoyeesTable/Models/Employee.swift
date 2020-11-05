
struct Employee: Comparable {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }

    static func <(lhs: Employee, rhs: Employee) -> Bool {
        lhs.surname < rhs.surname
    }
}

extension Employee {
    static func getEmployeesList() -> [Employee] {
        var employees: [Employee] = []
        
        while employees.count < 10 {
            let someEmployee = Employee(name: names[employees.count], surname: surnames[employees.count], email: emails[employees.count], phone: phones[employees.count])
            employees.append(someEmployee)
        }
        employees.sort(by: <)
        return employees
    }
}
