//
//  AddContactsViewController.swift
//  frontend
//
//  Created by Ziyu Zhang on 4/8/17.
//  Copyright © 2017 Ziyu Zhang. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class AddContactsViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var company: UITextField!
    @IBOutlet weak var position: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func donePressed(_ sender: Any) {
        Alamofire.request("https://prm-backend.appspot.com/users/1/contacts?firstName=\(firstName.text != nil ? firstName.text! : "")&lastName=\(lastName.text != nil ? lastName.text! : "")&phoneNumber=\(phoneNumber.text != nil ? phoneNumber.text! : "")&email=\(email.text != nil ? email.text! : "")&location=\(location.text != nil ? location.text! : "")&company=\(company.text != nil ? company.text! : "")&position=\(position.text != nil ? position.text! : "")".addingPercentEncoding( withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!, method: .post).responseJSON {
            response in
            
            print(response.result.value!);
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
