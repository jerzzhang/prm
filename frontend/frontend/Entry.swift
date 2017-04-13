//
//  Entry.swft.swift
//  frontend
//
//  Created by Ziyu Zhang on 4/13/17.
//  Copyright © 2017 Ziyu Zhang. All rights reserved.
//

import Foundation
import ObjectMapper

class Entry: Mappable {
    var id: Int?;
    var text: String?;
    var timestamp: String?;
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        id <- map["id"];
        text <- map["text"];
        timestamp <- map["timestamp"];
    }
}
