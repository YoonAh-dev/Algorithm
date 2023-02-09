//
//  10809. 알파벳 찾기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func findAlphabet(of string: String) {
    var alphabets: [Int] = Array(repeating: -1, count: 26)

    string.enumerated().forEach { index, value in
        let arrayIndex: Int = Int(value.asciiValue!) - 97

        if alphabets[arrayIndex] == -1 {
            alphabets[arrayIndex] = index
        }
    }

    alphabets.forEach {
        print($0, terminator: " ")
    }
}

//findAlphabet(of: readLine()!)
