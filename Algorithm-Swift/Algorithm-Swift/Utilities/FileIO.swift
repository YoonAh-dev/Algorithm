//
//  FileIO.swift
//  Algorithm-Swift
//
//  Created by SHIN YOON AH on 2022/12/21.
//

import Foundation

/// 빠른 입출력(fread) - FileIO
///
/// readLine()이 느리기 때문에 입력을 받을 때 시간 초과가 날 수 있습니다.
/// FileIO는 이를 해결해줍니다.
///
/// 사용법
/// -----------------
/// let fIO = FileIO()
/// let n = fIO.readInt()
/// print(n) // 1
/// ------------------
/// Ctrl + D 로 EOF를 나타낸다.
///

final class FileIO {

    private let buffer: [UInt8] // 입력을 byte의 배열로 바꿔서 저장
    private var index: Int = 0 // 현재 읽어야 할 byte의 위치를 저장

    // FileHandle 객체 = 파일의 데이터에 접근할 수 있게 해준다.
    // standardInput은 표준입력에 대한 인스턴스를 만드는것
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        self.buffer = Array(try! fileHandle.readToEnd()!) + [UInt8(0)]
    }

    // 인라인함수
    // 함수를 사용할 때는 호출 실행이 아주 빠른 함수의 경우 호출에 걸리는 시간이 오히려 오래 걸릴 수 있다.
    // 따라서 컴파일 할때 함수의 코드를 바로 호출할 자리에 삽입한다.

    // 1byte를 읽어오는 함수
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 } // 읽고나서 index 추가

        return buffer[index]
    }

    // 연속된 byte값 int로 변환해서 읽어오는 함수
    @inline(__always) func readInt() -> Int {
        var sum = 0 // 결과 저장할 곳
        var now = read() // 지금 index의 byte 값
        var isPositive = true // 부호를 저장할 곳

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // -가 나오면 음수 처리

        // 0~9에 해당하는 byte
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now - 48)
            now = read()
        }

        return sum * (isPositive ? 1 : -1)
    }

    // String으로 오는 함수
    @inline(__always) func readString() -> String {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시

        // 공백이나 줄바꿈이 아니라면 그 index를 기록
        // -1을 해주는 이유는 index 값은 앞으로 읽을 다음 byte를 가리키고 있으므로
        let beginIndex = index - 1

        // 공백(32) 혹은 줄바꿈(10) 혹은 파일의 끝(0)이 나오기 전까지 read
        while now != 10,
              now != 32,
              now != 0 { now = read() }

        // 공백(32) 혹은 줄바꿈(10) 혹은 파일의 끝(0)이 나와서 while문을 벗어나면
        // 시작 index부터 문자열의 index까지 Array를 잘라서 String으로 타입 변환해서 리턴
        return String(bytes: Array(buffer[beginIndex..<(index - 1)]), encoding: .ascii)!
    }

    // 연속된 byte값 읽어오기
    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
        var now = read()

        while now == 10 || now == 32 { now = read() }
        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return Array(buffer[beginIndex..<(index - 1)])
    }
}
