//
//  Sort.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/22.
//

import Foundation

var realCount = 0

func swap(a: Int, b: Int, arr: inout [Int]) {
    let temp = arr[a]
    arr[a] = arr[b]
    arr[b] = temp
}

func quicksort<T: Comparable>(_ a: [T]) -> [T] {
    guard a.count > 1 else { return a }

    let pivot = a[a.count/2]
    let less = a.filter { $0 < pivot }
    let equal = a.filter { $0 == pivot }
    let greater = a.filter { $0 > pivot }

    return quicksort(less) + equal + quicksort(greater)
}

func countingSort(_ array: [Int]) -> [Int] {
    guard array.count > 0 else { return [] }

    let maxElement = array.max() ?? 0
    var countArray = [Int](repeating: 0, count: Int(maxElement + 1))

    for element in array {
        countArray[element] += 1
    }

    print("inputArray : \(array)")
    print("countArray : \(countArray)")

    for index in 1 ..< countArray.count {
    let sum = countArray[index] + countArray[index - 1]
        countArray[index] = sum
    }

    print("countArray(accumulated) : \(countArray)")
    print("inputArray : \(array)")

    var sortedArray = [Int](repeating: 0, count: array.count)
    for element in array {
        countArray[element] -= 1
        sortedArray[countArray[element]] = element

        print("출력 배열의 \(countArray[element]) 번째 인덱스에 입력 배열 \(element) 값을 넣음")
    }

    print("sortedArray : \(sortedArray)")

    return sortedArray
}
