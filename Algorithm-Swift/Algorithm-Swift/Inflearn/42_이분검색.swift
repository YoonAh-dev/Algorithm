//
//  42_이분검색.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/08/18.
//

import Foundation

func Partition(arr: inout [Int], left: Int, right: Int) -> Int {
    let pivot = arr[left]
    var low = left + 1
    var high = right

    while low <= high {
        while arr[low] < pivot { low += 1 }
        while arr[high] > pivot { high -= 1 }

        if low <= high { arr.swapAt(low, high) }
    }

    arr.swapAt(left, high)

    return high
}

func quicksort(_ arr: inout [Int], left: Int, right: Int) {
    if left <= right {
        let pivot = Partition(arr: &arr, left: left, right: right)
        quicksort(&arr, left: left, right: pivot - 1)
        quicksort(&arr, left: pivot + 1, right: right)
    }
}

func solution42() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nm.first!
    let m = nm.last!
    var arr = readLine()!.split(separator: " ").map { Int($0)! }

    quicksort(&arr, left: 0, right: n - 1)

    arr.enumerated().forEach { index, num in
        if num == m {
            print(index + 1)
            return
        }
    }
}
