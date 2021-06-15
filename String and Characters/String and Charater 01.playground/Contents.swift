import UIKit

let s = "String"

let c : Character = "C"

let emptyChar : Character = " "

let emptyString = ""
emptyString.count

let emptyString2 = String()


//MARK: -String Types

var nsstr :NSString = "str"
let swiftStr : String = nsstr as String // 타입 캐스팅

nsstr = swiftStr as NSString


//MARK: -Mutability

let immutableStr = "str"

//immutableStr = "new Str"

var mutableStr = "str"
mutableStr = "new Str"

//MARK: -unicode

let str = "Swift String"

str.utf8
str.utf16

var thumbUp1 = "👍"

var thumbUp2 = "\u{1F44D}" // 유니코드로 설정하기
//    👍
//    올린 엄지
//    유니코드: U+1F44D, UTF-8: F0 9F 91 8D


//MARK: -multiline String literals


let loremIpsums = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book." 

let multiline = """
Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
        when an unknown printer took a galley of type and scrambled it to make a type specimen book.
"""

print(multiline)

/*
  "\" 백슬래쉬를 추가시 문자열의 줄바꿈을 허용하지않는다
 */




