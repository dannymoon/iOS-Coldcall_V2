

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    let people = ["Ready?","Bryant","Cody","Cody","Jimmy","Courtney","Michael","Royta", "Jay","Uyanga"]
    
    @IBAction func coldcall(_ sender: UIButton) {
    let number = Int(arc4random_uniform(5) + 1)
    let show_number = String(number)
    numberLabel.text = show_number
        if number <= 2{
            numberLabel.textColor = UIColor.red
        }else if number == 5{
            numberLabel.textColor = UIColor.green
        }else if number >= 5{
            numberLabel.textColor = UIColor.blue
        }else {
            numberLabel.textColor = UIColor.orange
        }
    let personNumber = Int(arc4random_uniform(UInt32(people.count)))
    nameLabel.text = people[personNumber]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
