//
//  BubbleSort.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/03/25.
//

import Foundation

func bubbleSort(arr: [Int]) {
    var arr = arr

    for i in 0..<arr.count - 1 {
        for j in 0..<arr.count - i - 1 {
            if arr[j] > arr[j+1] { arr.swapAt(j, j+1) }
        }
    }
}

// main에다가 해당 주석을 넣어주면 시간 복잡도 확인 가능
//var arr: [Int] = []
//stride(from: 1, through: 10000, by: 1).forEach {
//    arr.append($0)
//}
//
//let measureSort = measureTime {
//    bubbleSort(arr: arr)
//}
//print(measureSort)
