//
//  DetailViewController.swift
//  frontend
//
//  Created by Ziyu Zhang on 4/10/17.
//  Copyright © 2017 Ziyu Zhang. All rights reserved.
//

import Foundation
import UIKit

class EntriesViewController: UIViewController {
    
    var contact: Contact?;
    @IBOutlet weak var navBar: UINavigationBar!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var tb = self.tabBarController as! DetailTabBarController
        contact = tb.contact;
        
        navBar.topItem?.title = "\(contact!.firstName!) \(contact!.lastName!)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "timelineSegue") {
            let controller = segue.destination as! TimelineTableViewController;
            var tb = self.tabBarController as! DetailTabBarController
            controller.contactId = tb.contact!.id;
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

