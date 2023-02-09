//
//  Array.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

// 배열 안전하게 조회하는 방법
// http://minsone.github.io/programming/check-index-of-array-in-swift
extension Array {
    subscript (safe index: Int) -> Element? {
        return indices ~= index ? self[index] : nil
    }
}
