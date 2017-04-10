//
//  DetailViewController.swift
//  frontend
//
//  Created by Ziyu Zhang on 4/10/17.
//  Copyright © 2017 Ziyu Zhang. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    var contact: Contact?;
    @IBOutlet weak var navBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navBar.topItem?.title = "Hi";
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

