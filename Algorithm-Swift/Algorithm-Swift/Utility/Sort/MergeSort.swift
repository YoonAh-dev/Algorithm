//
//  MergeSort.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/03.
//

import Foundation

func mergeSort(_ list: [Int]) -> [Int] {
    if list.count < 2 { return list }
    let mid = list.count / 2

    return merge(leftList: mergeSort(Array(list[0..<mid])),
                 rightList: mergeSort(Array(list[mid..<list.count])))
}

func merge(leftList: [Int], rightList: [Int]) -> [Int] {
    var lt = 0, rt = 0
    var temp: [Int] = []

    while lt < leftList.count && rt < rightList.count {
        if leftList[lt] < rightList[rt] {
            temp.append(leftList[lt])
            lt += 1
        } else {
            temp.append(rightList[rt])
            rt += 1
        }
    }
    temp += leftList[lt..<leftList.count]
    temp += rightList[rt..<rightList.count]

    return temp
}

// main에다가 해당 주석을 넣어주면 시간 복잡도 확인 가능
//var arr: [Int] = []
//stride(from: 1, through: 10000, by: 1).forEach {
//    arr.append($0)
//}
//
//let measureSort1 = measureTime {
//    mergeSort(arr)
//}
//print(measureSort1)
