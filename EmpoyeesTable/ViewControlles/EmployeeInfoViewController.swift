
import UIKit

class EmployeeInfoViewController: UIViewController {

    @IBOutlet var employeeInfo: UILabel!
    
    var employee: Employee!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(employee.fullName)"
        employeeInfo.text = "phone: \(employee.phone)\nemail: \(employee.email)"
    }
    
}

