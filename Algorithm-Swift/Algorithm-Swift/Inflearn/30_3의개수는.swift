//
//  30_3의개수는.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/08.
//

import Foundation

func solution30() {
    let n = Int(readLine()!)!
    var lt = -1, rt = -1, i = 0, result = 0

    while lt != 0 {
        let current = (n % Int(pow(Double(10), Double(i + 1)))) / Int(pow(Double(10), Double(i)))
        lt = n / Int(pow(Double(10), Double(i + 1)))
        rt = n % Int(pow(Double(10), Double(i)))

        if current > 3 {
            result += (lt + 1) * Int(pow(Double(10), Double(i)))
        } else if current < 3 {
            result += lt * Int(pow(Double(10), Double(i)))
        } else {
            result += lt * Int(pow(Double(10), Double(i))) + (rt + 1)
        }

        i += 1
    }

    print(result)

}
