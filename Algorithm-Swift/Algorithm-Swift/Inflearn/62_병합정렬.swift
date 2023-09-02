//
//  62_병합정렬.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2023/09/02.
//

import Foundation

func divide(lt: Int, rt: Int, arr: inout [Int]) {
    if lt < rt {
        let mid = (lt + rt) / 2
        var p1 = lt, p2 = mid + 1
        var temp: [Int] = []

        divide(lt: lt, rt: mid, arr: &arr)
        divide(lt: mid + 1, rt: rt, arr: &arr)

        while p1 <= mid && p2 <= rt {
            if arr[p1] < arr[p2] {
                temp.append(arr[p1])
                p1 += 1
            } else {
                temp.append(arr[p2])
                p2 += 1
            }
        }
        while p1 <= mid { temp.append(arr[p1]); p1 += 1 }
        while p2 <= rt { temp.append(arr[p2]); p2 += 1 }

        arr[lt...rt] = temp[0...]
    }
}

func solution62() {
    let n = Int(readLine()!)!
    var arr = readLine()!.split(separator: " ").map { Int($0)! }
    divide(lt: 0, rt: n - 1, arr: &arr)
    arr.forEach { print($0, terminator: " ") }
}
