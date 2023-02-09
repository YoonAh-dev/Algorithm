//
//  221222 네이버 코딩테스트.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/23.
//

import Foundation

// 1.

public func solution(_ A : inout [Int]) -> Int {
    var turnedBulbs = Array.init(repeating: false, count: A.count)
    var shines: Int = 0
    var previousCount = 0

    for item in A {
        var count = 0
        turnedBulbs[item - 1] = true

        for turned in turnedBulbs {
            defer { count += 1 }

            if !turned {
                if previousCount < count {
                    shines += 1
                }
                previousCount = count
                break
            }
        }
    }

    return shines + 1
}

// 2.

public func solution(_ S : inout String, _ C : inout [Int]) -> Int {
    let arrayOfS = Array(S)
    var cost: Int = 0
    var index: Int = 0

    while index != arrayOfS.count - 1 {
        let tempIndex = index
        var costs: [Int] = []
        costs.append(C[index])

        for compareIndex in tempIndex+1..<arrayOfS.count {
            index += 1

            if arrayOfS[tempIndex] == arrayOfS[compareIndex] {
                costs.append(C[compareIndex])
            } else {
                break
            }
        }

        if costs.count > 1 {
            let max = costs.max()!
            let costSum = costs.reduce(0, +) - max
            cost += costSum
        }
    }

    return cost
}

// 3.

func permutation(_ target: [String], _ targetNum: Int) -> [[String]] {
    var result: [[String]] = []
    var check = [Bool](repeating: false, count: target.count)

    func permute(_ arr: [String]) {
        if arr.count == targetNum {
            result.append(arr)
            return
        }
        for i in 0..<target.count {
            if check[i] == true {
                continue
            } else {
                check[i] = true
                permute(arr + [target[i]])
                check[i] = false
            }
        }
    }
    permute([])

    return result
}

public func solution(_ A : Int, _ B : Int, _ C : Int) -> String {
    let aStrings: [String] = splitString(of: String(repeating: "a", count: A))
    let bStrings: [String] = splitString(of: String(repeating: "b", count: B))
    let cStrings: [String] = splitString(of: String(repeating: "c", count: C))
    let mergedArray: [String] = aStrings + bStrings + cStrings
    var resultArray: [[String]] = [[]]
    var result: String = ""

    for index in 0..<mergedArray.count {
        let array = permutation(mergedArray, index+1)

        if !array.isEmpty {
            resultArray = array
        }
    }

    for item in resultArray {
        var hasSameComponent = false

        for index in 0..<item.count - 1 {
            if resultArray[index] == resultArray[index+1] {
                hasSameComponent = true
                break
            }
        }

        if !hasSameComponent {
            result = item.joined()
            break
        }
    }

    return result
}

func splitString(of string: String) -> [String] {
    let stringArr = Array(string)
    var resultArr: [String] = []
    var result: String = ""
    if stringArr.count <= 2 { return ["\(string)"] }

    stringArr.forEach { item in
        if result.count == 2 {
            resultArr.append(result)
            result = ""
        }

        result += "\(item)"
    }

    if result.count > 0 {
        resultArr.append(result)
    }

    return resultArr
}
