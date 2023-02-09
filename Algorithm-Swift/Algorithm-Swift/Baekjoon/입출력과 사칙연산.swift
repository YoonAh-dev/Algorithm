//
//  입출력과 사칙연산.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

// 2557. Hello World

func printHelloWorld() {
    print("Hello World!")
}

// 1000. A+B

func addAB() {
    let inputNumbers = readLine()
    let intNumbers = inputNumbers?.components(separatedBy: " ").map { Int($0)! }
    let calculatedNumber = (intNumbers?.first)! + (intNumbers?.last)!

    print(calculatedNumber)
}

func addAB2() {
    let inputNumbers = readLine()
    let calculatedNumber = inputNumbers?.components(separatedBy: " ").map { Int($0)! }.reduce(0, +)

    print(calculatedNumber!)
}

// 1001. A-B

func minusAB() {
    let inputNumbers = readLine()
    let intNumbers = inputNumbers?.components(separatedBy: " ").map { Int($0)! }
    let calculatedNumber = (intNumbers?.first)! - (intNumbers?.last)!

    print(calculatedNumber)
}

// 10998. A*B

func multiAB() {
    let inputNumbers = readLine()
    let calculatedNumber = inputNumbers?.components(separatedBy: " ").map { Int($0)! }.reduce(1, *)

    print(calculatedNumber!)
}

// 1008. A/B

func divideAB() {
    let inputNumbers = readLine()
    let doubleNumbers = inputNumbers?.components(separatedBy: " ").map { Double($0)! }
    let calculatedNumber = (doubleNumbers?.first)! / (doubleNumbers?.last)!

    print(calculatedNumber)
}

// 10869. 사칙연산

func plus(first: Int, last: Int) -> Int {
    return first + last
}

func minus(first: Int, last: Int) -> Int {
    return first - last
}

func multiply(first: Int, last: Int) -> Int {
    return first * last
}

func divide(first: Int, last: Int) -> (quotient: Int, remainder: Int) {
    return (first / last, first % last)
}

func calculator() {
    let inputNumbers = readLine()
    let intNumbers = inputNumbers?.components(separatedBy: " ").map { Int($0)! }
    let (firstNumber, lastNumber) = intNumbers.map { ($0.first!, $0.last!) }!

    let plusNumber = plus(first: firstNumber, last: lastNumber)
    let minusNumber = minus(first: firstNumber, last: lastNumber)
    let multipliedNumber = multiply(first: firstNumber, last: lastNumber)
    let dividedNumberTuple = divide(first: firstNumber, last: lastNumber)

    print("\(plusNumber)\n\(minusNumber)\n\(multipliedNumber)\n\(dividedNumberTuple.quotient)\n\(dividedNumberTuple.remainder)")
}

// 10926. ??!

func surprised(by nickname: String) -> String {
    return "\(nickname)??!"
}
// print(surprised(by: readLine()!))

// 18108. 1998년생인 내가 태국에서는 2541년생?!

extension String {
    var bcYear: Int {
        return Int(self)! - 543
    }
}
// print(readLine()!.bcYear)


// 3003. 킹, 퀸, 룩, 비숍, 나이트, 폰

extension Array { // joined 를 사용하면 되지 않나..
    var description: String {
        var result: String = ""

        self.forEach {
            result += "\($0) "
        }

        return result
    }
}

func calculatorRemainder(of pieces: [Int]) -> [Int] {
    let totalPieces = [1, 1, 2, 2, 2, 8]

    return pieces.enumerated().map { index, value in
        totalPieces[index] - value
    }
}

//let pieces = readLine()!.components(separatedBy: " ").map { Int($0)! }
//let remainders = calculatorRemainder(of: pieces)
// print(remainders.description)

// 10430. 나머지

func calculate(_ numbers: [Int]) -> [Int] {
    let a = numbers.first!
    let b = numbers[1]
    let c = numbers.last!
    var results: [Int] = []

    results.append((a + b) % c)
    results.append((a * b) % c)

    return results
}

//let numbers = calculate(readLine()!.components(separatedBy: " ").map { Int($0)! })
//print("\(numbers.first!)\n\(numbers.first!)\n\(numbers.last!)\n\(numbers.last!)")

// 2588. 곱셈

extension Array {
    var descriptionWithNewline: String {
        var result: String = ""

        self.forEach {
            result += "\($0)\n"
        }

        return result
    }
}

func calculate(_ firstNumber: Int, by secondNumber: Int) -> Int {
    return firstNumber * secondNumber
}

func calculateThreeDigitNumber(_ firstNumber: Int, by secondNumber: Int) -> [Int] {
    var results: [Int] = []

    secondNumber.description.reversed().forEach {
        let result = calculate(firstNumber, by: Int(String($0))!)
        results.append(result)
    }

    results.append(calculate(firstNumber, by: secondNumber))

    return results
}

//let results: [String] = calculateThreeDigitNumber(Int(readLine()!)!, by: Int(readLine()!)!).map { $0.description }
//print(results.descriptionWithNewline)

// 10171. 고양이

let cat = """
\\    /\\
 )  ( ')
(  /  )
 \\(__)|
"""
// print(cat)

// 10172. 개

let dog = """
|\\_/|
|q p|   /}
( 0 )\"\"\"\\
|\"^\"`    |
||_/=\\\\__|
"""
// print(dog)

// 25083. 새싹

let sprout = """
         ,r'\"7
r`-_   ,'  ,/
 \\. \". L_r'
   `~\\/
      |
      |
"""
// print(sprout)
