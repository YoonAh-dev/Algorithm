//
//  SelectionSort.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/03/25.
//

import Foundation

func selectionSort(arr: [Int]) {
    var arr = arr
    var minIndex = 0

    for i in 0..<arr.count {
        minIndex = i

        for j in i+1..<arr.count {
            if arr[j] < arr[minIndex] { minIndex = j }
        }

        if i != minIndex {
            arr.swapAt(i, minIndex)
        }
    }
}

// main에다가 해당 주석을 넣어주면 시간 복잡도 확인 가능
//var arr: [Int] = []
//stride(from: 1, through: 10000, by: 1).forEach {
//    arr.append($0)
//}
//
//let measureSort1 = measureTime {
//    selectionSort(arr: arr)
//}
//print(measureSort1)

//let measureSort2 = measureTime {
//    arr.sort()
//}
//print(measureSort2)
