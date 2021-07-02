import UIKit
import Foundation
//MARK: -Searching specific word or char

let str = "Hello, Swift"

str.lowercased().contains("swift")


// range 정하기
str.range(of: "Swift")
str.range(of: "Swift", options: [.caseInsensitive])

let str2 = "Hello , Programming"
let str3 = str2.lowercased()


// commonPrefix는 공통된 문자열을 저장해준다
var common = str.commonPrefix(with: str2) // 공통된 문자열만 변수에 저장해준다

common = str.commonPrefix(with: str3)
str.commonPrefix(with: str3, options: [.caseInsensitive])

str3.commonPrefix(with: str, options: [.caseInsensitive])


//MARK: -String Option #1

"A" == "a"

"A".caseInsensitiveCompare("a") == .orderedSame

