import UIKit

let id = "root"
let password = "1234qwer"

if id == "root" {
    print("valid id")
}
if password == "1234qwer" {
    print("valid password")
}
if id == "root" && password == "1234qwer" {
    print("go to admin page")
}else {
    print("incorrect value")
}


//MARK: -Switch Statement

//switch <#value#> {
//case <#pattern#>:
//    <#code#>
//default:
//    <#code#>
//}

let number = 1
switch number {
case 1:
    print("one")
case 2, 3:
    print("two or three")
default:
    print("not exist number")
    
    
}
switch number {
case let n where n <= 10:
    print(n)
default:
    print("other")
}

//MARK: -Interval Matching and fall through

let temperature = -8

switch temperature {
case ..<10 :
    print("Cold")
    fallthrough // 다음 케이스의 조건과 상관없이 실행하고 종료함
case 11...20 :
    print("Cool")
case 21...27 :
    print("Warm")
case 28... :
    print("Hot")
default:
    break
}

//MARK: - guard Statement

func validate (id: String?) -> Bool{
    guard let id = id else { // 옵셔널 바인딩을 통한 문자열 존재여부 확인
        return false // else 일시 실행된다 return 이나 throw를 통한 스코프를 탈출해야함
    }
    guard id.count >= 6 else {
        return false
    }
    return true
}
// if 와 guard의 차이점

validate(id: "abc")
validate(id: nil)
validate(id: "123asdasd")







