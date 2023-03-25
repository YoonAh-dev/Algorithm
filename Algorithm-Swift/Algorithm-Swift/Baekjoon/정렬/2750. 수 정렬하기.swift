//
//  2750. 수 정렬하기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/11.
//

import Foundation

func sort() {
    var inputArray: [Int] = []

    for _ in 0..<Int(readLine()!)! {
        inputArray.append(Int(readLine()!)!)
    }

    inputArray.sorted().forEach {
        print($0)
    }
}

//sort()
