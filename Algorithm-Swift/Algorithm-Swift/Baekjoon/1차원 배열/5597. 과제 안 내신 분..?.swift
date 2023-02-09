//
//  5597. 과제 안 내신 분..?.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/26.
//

import Foundation

func findMissingPerson() {
    var numberSet: Set<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]

    for _ in 0..<28 {
        let number = Int(readLine()!)!
        numberSet.remove(number)
    }

    numberSet.sorted().forEach {
        print($0, terminator: "\n")
    }
}

// findMissingPerson()
