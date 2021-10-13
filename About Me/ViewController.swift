//
//  ViewController.swift
//  About Me
//
//  Created by Malachai Jacobs on 9/27/21.
//

import UIKit
@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
class ViewController: UIViewController
{

    @IBOutlet weak var mytext: UITextField!
    @IBOutlet weak var information: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var segIndex: UISegmentedControl!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var nameText: UITextField!
    var label:String = " "
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        information.isHidden = true
    }
//reset button
    @IBAction func resetButton(_ sender: Any)
    {
        information.isHidden = true
        segIndex.selectedSegmentIndex = 0
        segIndex.backgroundColor = UIColor.systemTeal
        enterName.backgroundColor = UIColor(named: "mycolor")
        self.view.backgroundColor = UIColor.systemTeal
        enterName.text = " "
       // mytext.background = UIColor(named: Mycolor)
    }
    //enter button
    @IBAction func enter(_ sender: Any)
    
    {
        var Name1 = enterName.text ?? "Malachai"
        
        name.text =  ("Name = Malachai")
        if name.text == "Malachai"{
            information.isHidden = false
        
        
       
    }
    
      
    
    
       

        
        
        
    }

    @IBAction func segMentedController(_ sender: Any)
    {
        switch segIndex.selectedSegmentIndex
        {
        case 0:
            information.isHidden = false
            label = "I am 17 I was born June 18th of 2004"
            information.text = label

        case 1:
            label = "Rocky Mountain High"
            information.text = label

        case 2:
            label = "My hobbies are playing video game and also drawing I also love to ride bikes ing my freetime also drive around "
            information.text = label
        case 3: label = "In the future I plan to persue a carrier in graphic design and also maybe some type of interior design"
            information.text = label
        case 4:
            segIndex.backgroundColor = UIColor.green
            enterName.backgroundColor = UIColor.green
            self.view.backgroundColor = UIColor.green
            
            
            label = "My personality type according to True colors intl.com it says my personality type is the color green which is independent"
            information.text = label
        default:
            break
        }
    }
            
    
}
