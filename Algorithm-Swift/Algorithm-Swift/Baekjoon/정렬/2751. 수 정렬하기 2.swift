//
//  2751. 수 정렬하기 2.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/02/16.
//

import Foundation

/// #1 - 이 알고리즘으로 돌아가긴 함.. 하지만 시간이 1348ms 걸림
func sort2() {
    var inputArray: [Int] = []

    for _ in 0..<Int(readLine()!)! {
        inputArray.append(Int(readLine()!)!)
    }

    inputArray.sorted().forEach {
        print($0)
    }
}

//sort2()

/// #2 - Heap Sort로 풀었지만 1456ms이 걸림.. 더 걸림^^..
func MakeHeap(_ list: inout [Int], index: Int, n: Int) {
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

func Heapsort(_ list: [Int], n: Int) -> [Int] {
    var tempArr = list

    for i in stride(from: n / 2, to: 0, by: -1) {
        MakeHeap(&tempArr, index: i, n: n)
    }

    for i in stride(from: n - 1, to: 0, by: -1) {
        var temp = tempArr[1]
        tempArr[1] = tempArr[i + 1]
        tempArr[i + 1] = temp
        MakeHeap(&tempArr, index: 1, n: i)
    }

    return Array(tempArr[1...])
}

func solution2751() {
    var inputArray: [Int] = [0]

    for _ in 0..<Int(readLine()!)! {
        inputArray.append(Int(readLine()!)!)
    }

    let arr = Heapsort(inputArray, n: inputArray.count - 1)
    arr.forEach { print($0) }
}

// solution2751()
