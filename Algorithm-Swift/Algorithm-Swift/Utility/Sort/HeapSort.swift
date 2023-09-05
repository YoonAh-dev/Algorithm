//
//  HeapSort.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/05.
//

import Foundation

func makeHeap(_ list: inout [Int], index: Int, n: Int) {
    let temp = list[index]
    var child = index * 2

    while child <= n {
        if child < n && list[child] < list[child + 1] { child += 1 }
        if temp > list[child] { break }
        else {
            list[child / 2] = list[child]
            child *= 2
        }
    }

    list[child / 2] = temp
}

func heapSort(_ list: [Int], n: Int) -> [Int] {
    var tempArr = list

    for i in stride(from: n / 2, to: 0, by: -1) {
        makeHeap(&tempArr, index: i, n: n)
    }

    for i in stride(from: n - 1, to: 0, by: -1) {
        let temp = tempArr[1]
        tempArr[1] = tempArr[i + 1]
        tempArr[i + 1] = temp
        makeHeap(&tempArr, index: 1, n: i)
    }

    return tempArr
}

// main에다가 해당 주석을 넣어주면 시간 복잡도 확인 가능
//var arr: [Int] = []
//stride(from: 1, through: 10000, by: 1).forEach {
//    arr.append($0)
//}
//
//let measureSort1 = measureTime {
//    let _ = heapSort(arr, n: arr.count - 1)
//}
//print(measureSort1)
