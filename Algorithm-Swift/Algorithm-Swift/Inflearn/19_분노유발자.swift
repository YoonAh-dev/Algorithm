//
//  19_분노유발자.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/01.
//

import Foundation

func solution19() {
    let n = Int(readLine()!)!
    let students = readLine()!.split(separator: " ").map { Int($0)! }
    var cnt = 0

    for i in 0..<n-1 {
        var flag = true
        let max = students[i]
        for j in i+1..<n {
            if students[j] >= max {
                flag = false
                break;
            }
        }

        if flag {
            cnt += 1
        }
    }

    print(cnt)
}
