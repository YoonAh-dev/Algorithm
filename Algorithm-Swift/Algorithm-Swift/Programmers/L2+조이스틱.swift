//
//  L2+조이스틱.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

func convertAscii(of character: Character) -> Int {
    let value = UnicodeScalar(String(character))!.value
    let asciiNumber = Int(value) - 65
    return  (asciiNumber > 13) ? 26 - asciiNumber : asciiNumber
}

func solution(_ name: String) -> Int {
    let name = Array(name)
    var result: Int = 0, minLength = name.count - 1
    
    for (startIndex, ascii) in name.enumerated() {
        // 1. ascii 코드 계산
        result += convertAscii(of: ascii)
        
        // 2. A의 연속이 끝나는 곳 찾기
        var endIndex = startIndex + 1
        while endIndex < name.count && name[endIndex] == "A" {
            endIndex += 1
        }
        
        // 3. 거리 찾기(startIndex 갔다가 endIndex 이동)
        minLength = min(minLength, startIndex * 2 + (name.count - endIndex))
        minLength = min(minLength, (name.count - endIndex) * 2 + startIndex)
    }
    
    return result + minLength
}
