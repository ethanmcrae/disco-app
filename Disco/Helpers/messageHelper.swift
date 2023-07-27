//
//  messageHelper.swift
//  Disco
//
//  Created by Ethan McRae on 7/26/23.
//

import Foundation
import UIKit

class MessageHelper {

    static func openMessageWithPretypedMessage(recipient: [String: Any], message: String) {
        let sms: String = "sms:\(recipient["id"] as! String)&body=\(message)"
        let strURL: String = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        UIApplication.shared.open(URL.init(string: strURL)!, options: [:], completionHandler: nil)
    }
}
