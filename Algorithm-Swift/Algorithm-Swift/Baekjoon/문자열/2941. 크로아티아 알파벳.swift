//
//  2941. 크로아티아 알파벳.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func countCroatianAlphabet() -> Int {
    let alphabet: [String] = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
    var string = readLine()!

    alphabet.forEach {
        if string.contains($0) {
            string = string.replacingOccurrences(of: $0, with: "a")
        }
    }

    return string.count
}

//print(countCroatianAlphabet())
