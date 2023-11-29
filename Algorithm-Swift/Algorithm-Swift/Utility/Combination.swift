//
//  Combination.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/26/23.
//
// https://velog.io/@qwer15417/Swift-%EC%88%9C%EC%97%B4%EA%B3%BC-%EC%A1%B0%ED%95%A9

import Foundation

func combination(_ array: [String], _ n: Int) -> [[String]] {
    var result: [[String]] = []
    if array.count < n { return result }

    func cycle(_ index: Int, _ now: [String]) {
        if now.count == n {
            result.append(now)
            return
        }
        
        for i in index..<array.count {
            cycle(i + 1, now + [array[i]])
        }
    }
    
    cycle(0, [])
    
    return result
}
