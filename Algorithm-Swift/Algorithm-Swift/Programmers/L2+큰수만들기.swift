//
//  L2+큰수만들기.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 11/29/23.
//

import Foundation

func solution(_ number: String, _ k: Int) -> String {
    var number = Array(number), result: String = ""
    var cnt = k, currentIndex = 0
    
    while (cnt > 0) && (result.count < number.count - k) && (currentIndex < number.count) {
        var maxIndex = 0, maxValue = -1
        
        // 1. 가장 큰 수 찾기(k + 1)
        for i in currentIndex...(currentIndex + cnt) where i < number.count {
            // 1-1. 9가 가장 큰 수이기 때문에 더이상 for문 돌지 않음
            if Int(String(number[i]))! == 9 { maxIndex = i; break }
            
            if maxValue < Int(String(number[i]))! {
                maxValue = Int(String(number[i]))!
                maxIndex = i
            }
        }
        
        // 2. 가장 큰 수 추가하기
        result += "\(number[maxIndex])"
        
        // 3. cnt 숫자 줄이기
        cnt -= maxIndex - currentIndex
        
        // 4. 가장 큰 값 다음 값부터 또 확인
        currentIndex = maxIndex + 1
    }
    
    // 5. result 출력
    if number.count - k == result.count { return result }
    else {
        result += number[currentIndex..<number.count].map { String($0) }.joined()
        return result
    }
}

// 다른 분의 솔루션
func solution(_ number: String, _ k: Int) -> String {
    var result: [Int] = []
    var count: Int = 0

    Array(number).compactMap { Int(String($0)) }.forEach { item in
        while count < k {
            if let last = result.last, last < item {
                result.popLast()
                count += 1
            } else {
                break
            }
        }
        result.append(item)
    }

    return result[0..<(result.count - k + count)].map { "\($0)" }.joined()
}
