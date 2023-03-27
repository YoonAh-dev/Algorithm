//
//  InsertionSort.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/03/27.
//

import Foundation

func insertionSort(arr: [Int]) {
    var arr = arr

    for i in 1..<arr.count {
        var pivotIndex = i
        let pivot = arr[i]

        for j in stride(from: i-1, through: 0, by: -1) where arr[j] > pivot {
            arr[j+1] = arr[j]
            pivotIndex = j
        }

        arr[pivotIndex] = pivot
    }
}

// main에다가 해당 주석을 넣어주면 시간 복잡도 확인 가능
//var arr: [Int] = []
//stride(from: 1, through: 10000, by: 1).forEach {
//    arr.append($0)
//}
//
//let measureTime2 = measureTime {
//    insertionSort(arr: arr)
//}
//print(measureTime2)
