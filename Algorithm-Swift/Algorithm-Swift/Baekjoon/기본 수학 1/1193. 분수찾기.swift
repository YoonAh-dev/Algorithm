//
//  1193. 분수찾기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

func findFraction(in num: Int) -> String {
    var sum: Int = 0
    var count: Int = 1
    var array: [String] = []

    for i in 1...num {
        sum += i
        count += 1

        if num <= sum {
            break
        }
    }

    if count % 2 == 0 {
        for i in 1..<count {
            array.append("\(count - i)/\(i)")
        }
    } else {
        for i in 1..<count {
            array.append("\(i)/\(count - i)")
        }
    }

    let index = count - (sum - num) - 2
    return array[index]
}

//let num = Int(readLine()!)!
//print(findFraction(in: num))

// 다른 사람 풀이
//var x = Int(readLine()!)!
//var i = 1
//while x > i {
//    x -= i
//    i += 1
//}
//
//if i % 2 == 0 {
//    print("\(x)/\(i - x + 1)")
//}
//else {
//    print("\(i - x + 1)/\(x)")
//}
