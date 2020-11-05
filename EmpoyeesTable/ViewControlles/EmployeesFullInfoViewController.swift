
import UIKit

class EmployeesFullInfoViewController: UITableViewController {
    
    private var employeesNames: [String] = []
    private var employeesInfo: [[String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makingSection()
    }
}

// MARK: - Table view data source
extension EmployeesFullInfoViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        employeesNames.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        employeesInfo[section].count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        employeesNames[section]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "employeeName", for: indexPath)
        
        let employeeInfo = employeesInfo[indexPath.section]
        cell.textLabel?.text = employeeInfo[indexPath.row]
        return cell
    }
    
// MARK: - Private Methods
    private func makingSection() {
        let employeesList = Employee.getEmployeesList()
        for employee in employeesList {
            employeesNames.append(employee.fullName)
        }
       
        for  employee in employeesList {
            employeesInfo.append(["phone: \(employee.phone)", "email: \(employee.email)"])
        }
    }

}
