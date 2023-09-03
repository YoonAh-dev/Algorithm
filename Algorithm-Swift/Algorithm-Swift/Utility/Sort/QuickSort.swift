//
//  QuickSort.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/03.
//

import Foundation

func partition(_ list: inout [Int], low: Int, high: Int) -> Int {
    let pivot = list[low]
    var i = low - 1, j = high + 1

    while true {
        i += 1
        while list[i] < pivot { i += 1 }
        j -= 1
        while list[j] > pivot { j -= 1 }
        if i >= j { return j }
        list.swapAt(i, j)
    }
}

func quickSort(_ list: inout [Int], low: Int, high: Int) {
    if low < high {
        let pivot = partition(&list, low: low, high: high)
        quickSort(&list, low: low, high: pivot - 1)
        quickSort(&list, low: pivot + 1, high: high)
    }
}

// 간단한 퀵 소트 코드
func quicksort(_ arr: [Int]) -> [Int] {
    guard arr.count > 1 else { return arr }

    let pivot = arr[arr.count/2]
    let less = arr.filter { $0 < pivot }
    let equal = arr.filter { $0 == pivot }
    let greater = arr.filter { $0 > pivot }

    return quicksort(less) + equal + quicksort(greater)
}

// main에다가 해당 주석을 넣어주면 시간 복잡도 확인 가능
//var arr: [Int] = []
//stride(from: 10000, through: 1, by: -1).forEach {
//    arr.append($0)
//}
//
//let measureSort1 = measureTime {
//    quickSort(&arr, low: 0, high: arr.count - 1)
//}
//print(measureSort1)
