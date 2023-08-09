//
//  31_탄화수소질량.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/09.
//

import Foundation

func solution31() {
    let str = readLine()!
    var temp = ""
    var nums: [Int] = []

    for (index, s) in str.enumerated() {
        if s.isNumber {
            temp += "\(s)"
        } else {
            if s == "H" && Int(temp) != nil {
                nums.append(Int(temp)!)
                temp = ""
            } else if s == "H" && Int(temp) == nil {
                nums.append(1)
            }
        }

        if index == str.count - 1 {
            if s == "H" {
                nums.append(1)
            } else {
                nums.append(Int(temp)!)
            }
        }
    }

    let res = nums.first! * 12 + nums.last! * 1
    print("\(res)")

}
