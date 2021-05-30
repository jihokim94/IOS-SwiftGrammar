import UIKit


/*/ 튜플은 두가지 이상의 값을 저장가능
 하나하나의 값을 튜블멤버라고 부른다
 
 */

let i = (12 , 34)

let data = ("<html>" , 200 , "OK" , 12.34 ) //  멤버당 하나의 인덱스를 가짐 0 부터 시작

data // String int String double을 튜블멤버를가지는 자료형
// 각 인덱스에 접근 해서 값 불러오기
data.0
data.1
data.2
data.3

var mutableTuple = data
mutableTuple.1 = 404
mutableTuple.1
 
//MARK: Named Tuples 튜플멤버에 이름을 붙여 가독성을 높여보자~

let named = (body: "<html>" , statusCode : 200 , statusMessage : "OK" , dataSize : 12.34)
named.1
named.statusCode // 인덱스로 접근하는것보다 코드의 가독성이 높아짐

//MARK: -tuple Decomposition 분해

//let body = data.0
//let code = data.1
//let message = data.2
//let size = data.3 //  너무 번거로워

// 디컴포지션 방법으로는~
let (body,code,message,size) = data  // 사이즈가 같아야 분해할수 있음 만약 필요없는 튜플멤버가 있다면  _ 와일드 카드 패턴으로 생략 가능
// let(body,code,message, _) <--- 이런식으로

//MARK: -tuple Matching

let resolution = (1920.0 , 1080.0)

if resolution.0 == 3840 && resolution.1 == 2160{
    print("4k")
}

// 튜플은 코다가 switch case 문이 더 간결하고 좋음
switch resolution {
case let(w, h) where w / h == 16.0 / 9.0:
    print("16:9")
case (_ , 1080) : // 와일드 형태로 원하는 튜플멤버만 확인도 가능~
    print("1080p")
case (3840...4000 , 2160) :
    print("4K")
default:
    break
}






