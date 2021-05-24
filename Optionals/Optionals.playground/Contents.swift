import UIKit

let optionalNum : Int? = nil // 공간은 존재하지만 저장할 값이 없다

let str : String = "Swift" // non-optional 타입은 값이 항상 존재 해야함
let optionalStr : String? = nil // 존재 하지 않아도됨  값이 존재하지않다는 nil을 초기화 할수 있음

let a : Int? = nil

let b = a
b


//MARK: -unwrapping

var num : Int? = nil
print(num)
num = 123
print(num)

//Forced Unwrapping
print(num!)

//num = nil
//print(num!) // 값이 없는데 강제로 밸류를 꺼냈기 떄문에 컴파일 에러 발생 이렇게는 쓰지말자~

if num != nil {
    print(num!)
} // 이렇게 하면

num = 123
let before = num
let after = num!


//옵셔널의 저장되 있는 값을 사용하려면 값을 언래핑해야한다!
//nil이 저장되있상태에서 강제 추출 하면 크래시가 발생한다 꼭 주의 !!!하셈... 되도록 안쓰는게 좋음!!
// 옵셔널 타입을 언래핑하면 none-optional type 으로 리턴 된다!

//MARK: -optional binding
// unwrapping 된 상태에서 변수나 상수에 바인딩됨
if let n = num {
    print(n)
    type(of: n) // optional 타입이 아님
}else{
    print("empty")
}

var guardStr : String? = "str"
print(guardStr)
guard let str = guardStr else {
//    str
    fatalError()
    
} // guard에서 바인된 값은 else 문에서는 사용을 못하고 그 밖에서 사용가능!!
str // <--- guard에서 바인된 상수

//MARK: -Implicitly Unwrapped Optionals

let number : Int! = 12 // 자동으로 언래핑된다는것으로 생각하면 됨
type(of: number)
let abc = number
abc
type(of: abc)

//MARK: -nil-coalescing Operator

var msg = ""
var input: String? = "Swift"

// 1단계
if let inputName = input {
    msg = "Hello, " + inputName
}else{
    msg = "Hello, Stranger"
}
print(msg)

// 2단계
var msgStr = "Hello , " + (input != nil ? input! : "Stranger")
print(msgStr)

//3단계
input = nil
msgStr = "Hello , " + (input ?? "Stranger")
print(msgStr)

//MARK: -옵셔널 체이닝
// 쉽게 말하면 옵셔널을 여달아서 호출하기
// 옵셔널 체이닝의 결과는 항상 옵셔널이다
//옵셔널 표현식 중에서 하나라도 nil을 리턴한다면 이어지는 표현식을 평가하지 않고 그냥 바로 nil을 리턴

struct Contacts {
    var email : [String : String]
    var address : String?
}
struct Person {
    var name: String
    var contacts : Contacts?
    
    init(name: String , email : String) {
        self.name = name
        contacts = Contacts(email: ["home": email], address: "Seoul")
    }
}


var p1 = Person(name: "James", email: "swift@naver.com")
let addressP1 = p1.contacts?.address
p1.contacts?.email["home"]



