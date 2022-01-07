//
//  main.swift
//  
//
//  Created by Luis Abraham on 2022-01-06.
//

import Crypto
import Foundation

let key = SymmetricKey(size: .bits128)
var mac = HMAC<SHA256>(key: key)

let dataToHash = "Hello, Swift!".data(using: .utf8)!
mac.update(data: dataToHash)
let digest = mac.finalize()

print(String(describing: digest))



