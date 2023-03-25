//
//  String.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/07.
//

import Foundation

// String -> Ascii 함수
private func strToAscii(_ str: String) -> Int {
    str.map { $0.asciiValue! }.map { Int($0) }.reduce(0,+)
}
