//
//  DetailViewController.swift
//  frontend
//
//  Created by Ziyu Zhang on 4/11/17.
//  Copyright © 2017 Ziyu Zhang. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    var contact: Contact?;
    @IBOutlet weak var navBar: UINavigationBar!
    
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var tb = self.tabBarController as! DetailTabBarController
        contact = tb.contact;
        
        navBar.topItem?.title = "\(contact!.firstName!) \(contact!.lastName!)"
        positionLabel.text = positionLabel.text! + " " + (contact!.position != nil ? contact!.position! : "");
        companyLabel.text = companyLabel.text! + " " + (contact!.company != nil ? contact!.company! : "");
        locationLabel.text = locationLabel.text! + " " + (contact!.location != nil ? contact!.location! : "");
        emailLabel.text = emailLabel.text! + " " + (contact!.email != nil ? contact!.email! : "");
        phoneNumberLabel.text = phoneNumberLabel.text! + " " + (contact!.phoneNumber != nil ? contact!.phoneNumber! : "");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
