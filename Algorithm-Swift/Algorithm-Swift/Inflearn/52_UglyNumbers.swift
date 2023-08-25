//
//  52_UglyNumbers.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/25.
//

import Foundation

func solution52() {
    let n = Int(readLine()!)!
    var p2 = 1, p3 = 1, p5 = 1, index = 1
    var arr = [0, 1]

    while index < n {
        index += 1

        let p2V = arr[p2] * 2, p3V = arr[p3] * 3, p5V = arr[p5] * 5
        if p2V < p3V && p2V < p5V { arr.append(p2V); p2 += 1 }
        else if p3V < p2V && p3V < p5V { arr.append(p3V); p3 += 1 }
        else if p5V < p2V && p5V < p3V { arr.append(p5V); p5 += 1 }
        else if p2V == p3V && p2V < p5V { arr.append(p2V); p2 += 1; p3 += 1 }
        else if p2V == p5V && p2V < p3V { arr.append(p2V); p2 += 1; p5 += 1 }
        else if p3V == p5V && p3V < p2V { arr.append(p3V); p3 += 1; p5 += 1 }
        else if p2V == p3V && p2V == p5V { arr.append(p2V); p2 += 1; p3 += 1; p5 += 1 }
    }

    print(arr[n])
}
