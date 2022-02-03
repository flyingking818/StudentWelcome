//
//  ViewController.swift
//  StudentWelcome
//
//  Created by Jeremy Wang on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    //Put UIOutlets before the viewDidLoad
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var studentTuition: UITextField!
    
    @IBOutlet weak var studentScholarship: UITextField!
        
    @IBOutlet weak var studentBalance: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Put the actions/funcs under viewDidLoad
    
    @IBAction func submitButton(_ sender: UIButton) {
        
        //var vs. let
        
        let fName = firstName.text!
        let lName = lastName.text!
        
        resultLabel.text = "Welcome to Flagler, \(String(fName))  \(String(lName))!"
        
        //Perform balance calculation
        let tuition = Double(studentTuition.text!)
        let scholarship = Double(studentScholarship.text!)
        
        var balance = Double(tuition! - scholarship!)
        
        studentBalance.text = String(balance)
    }
    
    
}

