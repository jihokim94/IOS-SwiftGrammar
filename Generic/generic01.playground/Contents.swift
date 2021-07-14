import UIKit

//MARK: -generics

// generic을 이용하면 형식에 의존하지않는 범용 코드 작성 가능 코드의 재사용성과 유지보수가 용이 해진다 ^^
//중복되는 함수 구현을 줄 일 수 있지~~ 날씨앱 api호출 메소드들 참고해봐 내가 예시 잘만들어놈 ㅎㅎ

/*
 func name<T>(parameter) -> Type {
 code
 }*/

func swapValue<T>(lhs: inout T , rhs: inout T) {
    let temp = lhs
    lhs = rhs
    rhs = temp
}

var a = 1
var b = 1
swapValue(lhs: &a, rhs: &b)
a
b

// 제네릭은 형식과 관계없이 한 자료형으로 처리해줌 <T> 타입 파라미터는 항상 한가지여야함

//MARK: -associated Types

/*
 associatedtype Name
 */

//protocol QueueCompatible {
//    associatedtype Element
//    func enqueue(value : Element)
//    func dequeue() -> Element?
//
//}
//    }
//}




