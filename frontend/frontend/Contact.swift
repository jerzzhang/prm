//
//  Users.swift
//  frontend
//
//  Created by Ziyu Zhang on 4/7/17.
//  Copyright © 2017 Ziyu Zhang. All rights reserved.
//

import Foundation
import ObjectMapper

class Contact: Mappable {
    var firstName: String?;
    var lastName: String?;
    var phoneNumber: String?;
    var email: String?;
    var birthday: String?;
    var location: String?;
    var company: String?;
    var position: String?;
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        firstName <- map["first_name"];
        lastName <- map["last_name"];
        phoneNumber <- map["phone_number"];
        email <- map["email"];
        birthday <- map["birthday"];
        location <- map["location"];
        company <- map["company"];
        position <- map["position"];
    }
}

