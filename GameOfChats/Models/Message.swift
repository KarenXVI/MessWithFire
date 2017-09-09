//
//  Message.swift
//  MessWithFire
//
//  Created by Karen Tserunyan on 9/3/17.
//  Copyright © 2017 Karen Tserunyan. All rights reserved.
//

import UIKit
import Firebase

class Message: NSObject {
    var fromId: String?
    var text: String?
    var timeStamp: NSNumber?
    var toId: String?
    
    func chatPartnerId() -> String? {
        return fromId == Auth.auth().currentUser?.uid ? toId : fromId
//        if fromId == Auth.auth().currentUser?.uid {
//            return toId
//        } else {
//            return fromId
//        }
    }
    
}
