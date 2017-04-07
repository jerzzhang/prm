//
//  ViewController.swift
//  frontend
//
//  Created by Ziyu Zhang on 4/7/17.
//  Copyright © 2017 Ziyu Zhang. All rights reserved.
//

import UIKit
import Alamofire //HTTP framework
import AlamofireObjectMapper

class ViewController: UIViewController, UITableViewDelegate {
    
    var contacts: [AnyObject] = [];
    
    //public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    
    //public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getContacts();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getContacts() {
        Alamofire.request("https://prm-backend.appspot.com/users/1/contacts", method: .get).responseJSON {
            response in
            
            print(response.result.value);
            
        }
    }

}

