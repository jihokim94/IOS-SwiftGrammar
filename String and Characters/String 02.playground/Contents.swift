//MARK: -String interpolation
//\(expr)
import UIKit
import Foundation

var string = "12.34KB"
let size = 12.34

string = String(size) + "KB"
string = "\(size)KB"

string = String(format: "%.1fKB", size) // size를 포맷 형태에 맞춰 넣는다

String(format: "hello , %@", "Swift")

String(format: "%d", 12)

String(format: "%010.3f", 12.34)

String(format: "[%d]", 123)
String(format: "[%10d]", 123) // 오른쪽 정렬
String(format: "[%-10d]", 123) // 왼쪽 정렬


let firstName = "Yoon-ah"
let lastName = "Lim"

let korFormat = "그녀의 이름은 %2$@ %1$@ 입니다." // 1$ 2$에 따라 대입되는 밸류의 인덱스를 지정할수 있음
let engFormat = "Her name is %@ %@."

String(format: korFormat, firstName , lastName)
String(format: engFormat, firstName , lastName)

var str : String?
str = "\\"
if let a = str {
    print(a)
}


// \t  -> 탭  \n 줄바꾸기  \" a " \ -> "a"

print("A\tB")
print("C\nD")
print("\"Hello\" He said.")


//MARK: -String indices
//문자열 인덱스에 대해 공부해보자

let exampleValue = "Swift"

let firstCh = exampleValue[exampleValue.startIndex]
print(firstCh)
let lastChIndex = exampleValue.index(before: exampleValue.endIndex)
let lastCh = exampleValue[lastChIndex]
print(lastCh)

let secondCharIndex = exampleValue.index(after: exampleValue.startIndex)
let secondCh = exampleValue[secondCharIndex]
print(secondCh)

let thirdIndex = exampleValue.index(exampleValue.startIndex, offsetBy: 2) //스타트인덱스이후 2번째 index 고로 3이됨
let thirdCh = exampleValue[thirdIndex]
print(thirdCh)

// 만일 허용 할 수 있는 인덱스 내에서 안전하게 값을 확인 하기 위해서는 아래와 같이

if thirdIndex < exampleValue.endIndex && exampleValue.startIndex <= thirdIndex {
    print(thirdCh)
}


//MARK: -String Basics

var str01 = "Hello , Swift String"

var emptyStr = ""
emptyStr = String() // 길이가 0인 빈문자열 생성

let a = String(true) // 문자열이다. 불린이 아닌~~

let b = String(12)
let c = String(12.34)

let d = String(str01)

let hex = String(123 , radix: 16) // 16진수 문자열로 리턴
let octal = String(123 , radix: 8) // 8진수 문자열로 리턴
let binary = String(123 , radix: 2) // 2진수 문자열로 리턴

let repeatStr = String(repeating: "🍎", count: 7)
let unicode = "\u{1f44f}"

let e = " \(a) \(b)"
let f = a + b

str01 += "!!"


str01.count
str01.count == 0

str01.isEmpty


str01.lowercased()
str01.uppercased()
str01

str01.capitalized

"apple ipad".capitalized

for char in "hello" {
    print(char)
}

let num = "12345667880"
num.randomElement()

num.shuffled() // 문자열을 랜덤으로 섞어서 리턴해줌
