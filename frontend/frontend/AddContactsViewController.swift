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
        print("https://prm-backend.appspot.com/users/1/contacts?firstName=" + firstName + "&lastName=" + lastName + "&phoneNumber=" + phoneNumber + "&email=" + email + "&location=" + location + "&company=" + company + "&position=" + position);
        
        Alamofire.request("https://prm-backend.appspot.com/users/1/contacts?firstName=" + firstName + "&lastName=" + lastName + "&phoneNumber=" + phoneNumber + "&email=" + email + "&location=" + location + "&company=" + company + "&position=" + position, method: .post).responseJSON {
            response in
            
            print(response.result.value!);
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
