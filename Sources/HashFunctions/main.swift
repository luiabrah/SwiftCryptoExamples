//
//  main.swift
//  
//
//  Created by Luis Abraham on 2022-01-06.
//

import Crypto
import Foundation

var sha256 = SHA256()
var sha512 = SHA512()

let dataToHash = "Hello, Swift!".data(using: .utf8)!

sha256.update(data: dataToHash)
sha512.update(data: dataToHash)

let sha256Digest = sha256.finalize()
let sha512Digest = sha512.finalize()

print(String(describing: sha256Digest))
print(String(describing: sha512Digest))

let otherString = "Hello, Swift".data(using: .utf8)!

// Reset state
sha256 = SHA256()
sha256.update(data: otherString)
let otherDigest = sha256.finalize()
print(String(describing: otherDigest))
print(sha256Digest == otherDigest)

