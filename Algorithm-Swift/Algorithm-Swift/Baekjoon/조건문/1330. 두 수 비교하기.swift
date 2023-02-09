//
//  1330. 두 수 비교하기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

func compare(_ first: Int, to last: Int) -> String {
    if first > last {
        return ">"
    } else if first < last {
        return "<"
    } else {
        return "=="
    }
}

//let inputValue = readLine()!.components(separatedBy: " ").map { Int($0)! }
//print(compare(inputValue.first!, to: inputValue.last!))
