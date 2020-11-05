

import UIKit

class EmployeeListViewControllerTableViewController: UITableViewController {
    
    // MARK: - Private Properties
    private let employeesList = Employee.getEmployeesList()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let employeeInfoVC  = segue.destination as! EmployeeInfoViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        employeeInfoVC.employee = employeesList[indexPath.row]
    }
    
}


// MARK: - Table view data source

extension EmployeeListViewControllerTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        employeesList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "employeeName", for: indexPath)
        
        let employee = employeesList[indexPath.row]
        cell.textLabel?.text = employee.fullName
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
}


