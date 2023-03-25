//
//  2751. 수 정렬하기 2.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/16.
//

import Foundation

// 이 알고리즘으로 돌아가긴 함.. 하지만 시간이 1348ms 걸림
func sort2() {
    var inputArray: [Int] = []

    for _ in 0..<Int(readLine()!)! {
        inputArray.append(Int(readLine()!)!)
    }

    inputArray.sorted().forEach {
        print($0)
    }
}

//sort2()
