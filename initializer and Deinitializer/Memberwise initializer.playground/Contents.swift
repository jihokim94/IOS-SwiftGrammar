import UIKit

struct First {
    let a : Int
    let b : Int
    let c : Int
}

let f = First(a: 1, b: 2, c: 3)

struct Second {
    let a : Int = 0
    let b : Int = 0
    let c : Int
}
let s = Second(c: 2)

struct Third {
    var a : Int = 0
    var b : Int = 1
    var c : Int
    
    
}

extension Third { // 익스텐션을 이용하면 멤버와이즈 이니셜라이즈를 제공하면서 다른 이니셜도 사용 할 수 있다.
    init(value : Int) {
        a = value
        b = value
        c = value
    }
}
var t = Third(a: 1, b: 2, c: 3)
var t2 = Third(c: 3)
var t1 = Third(value: 1)


