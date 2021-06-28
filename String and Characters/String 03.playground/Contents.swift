import UIKit
import Foundation

//MARK: -Substring

let str = "Hello , Swift"
let l = str.lowercased()

var first = str.prefix(1)

let newString = String(str.prefix(1))

// 서브스트링은 안쓰는게 좋음 업데이트시 바뀔수 있음

let s = str[..<str.index(str.startIndex, offsetBy: 2)]  // 0 ,1 인덱스만 나옴

let lower = str.index(str.startIndex, offsetBy: 2) // 3
let upper = str.index(str.startIndex, offsetBy: 5) // 6

str[lower ... upper]


//MARK: -String Editing

var str01 = "Hello"
str01.append(", ")
str01

let s01 = str01.appending("Swift")
str01
s01
s01.appending("!!")


"file size is ".capitalized.appendingFormat("%.1f", 12.1234)


var str02 = "Hello Swift"

str02.insert(",", at: str.index(str02.startIndex, offsetBy: 5))

if let sIndex = str02.firstIndex(of: "S") {
    str02.insert(contentsOf: "Awesome", at: sIndex)
}

str02


//MARK: -Replacing SubStrings

var str03 = "Hello, Objective-C"


// range를 사용한 문자열 대체
if let range = str03.range(of: "Objective-C") {
    str03.replaceSubrange(range, with: "Swift") // 레인지에 해당 되는 부분을 다른 문자열로 리플레이스~~~ 그리고 원본값도 바뀜
}

if let range = str03.range(of: "Hello") {
    let s = str03.replacingCharacters(in: range, with: "Hi")
    s
    str03
}

var s1 = str03.replacingOccurrences(of: "swift", with: "Awesome Swift") // 대소문자 구별로인한 대체 실패
s1

s1 = str03.replacingOccurrences(of: "swift", with: "Awesome Swift", options: .caseInsensitive) // 대소문자 구분 없이를 지정하기 위해 option 지정

s1

//MARK: -Removing Substrings

var str04 = "Hello, Awesome Swift!!!"

let lastCharIndex = str04.index(before: str04.endIndex)

var removedChar = str04.remove(at: lastCharIndex)

removedChar
str04

str04.removeFirst()
str04

str04.removeFirst(2) // 앞부터 2개삭제
str04

str04.removeLast()
str04
str04.removeLast(2)
str04

if let range = str04.range(of: "Awesome") {
    str04.removeSubrange(range)
}
str04

str04.removeAll()

str04 = "Hello, Awesome Swift!!!"

var subStr = str04.dropLast()
subStr = str04.dropLast(3)
str04

str04.drop{ ch in
    return ch != ","
}
str04.drop (while: { (ch) -> Bool in
    return ch != ","
})

//MARK: -Comparing Strings

let largeA = "Apple"
let smallA = "apple"
let b = "Banana"

largeA == smallA
largeA != smallA

largeA < smallA // 대문자 소문자 아스키코드의 값에 따라 나옴
largeA < b
smallA < b

largeA.compare(smallA) == .orderedSame
largeA.caseInsensitiveCompare(smallA) == .orderedSame // 대소문자 구분없이

let comparingStr = "Hello, Swift Programming!"
let prefix = "Hello"
let suffix = "Programming"

comparingStr.hasPrefix(prefix)
comparingStr.hasSuffix(suffix)
