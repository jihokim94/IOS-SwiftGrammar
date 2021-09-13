import UIKit
import Foundation

//MARK: - initializer

class Position {
    var x = 0.0
    var y : Double = 0.0
    var z : Double? = nil
}
let p = Position()
dump(p)

//MARK: - intializer Syntax
class SizeObj {
    var width = 0.0
    var height = 0.0
    
    init(width : Double , height : Double) {
        self.width = width
        self.height = height
    }
    convenience init(value : Double) {
        self.init(width : value , height : value)
    }
}

//MARK: - MemberWise initializer
// 구조체에서 파라미터를 모두 초기화 하기때문에 이니셜라이저를 구현하지않아도 인스턴스 생성 가능
struct SizeValue {
    var width = 0.0
    var height = 0.0
}
let s = SizeValue()
SizeValue(width: 1.4, height: 2.3)
