//
//  1152. 단어의 개수.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func countWords(of string: String) -> Int {
    let words = string.split(separator: " ")

    return words.count
}

//let string = readLine()!
//print(countWords(of: string))
