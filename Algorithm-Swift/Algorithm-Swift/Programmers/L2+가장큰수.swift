//
//  L2+가장큰수.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    guard !(numbers.contains(0) && Set(numbers).count == 1) else { return "0" }
    
    return numbers.sorted(by: {
        return String($0) + String($1) > String($1) + String($0)
    }).map { String($0) }.joined()
}
