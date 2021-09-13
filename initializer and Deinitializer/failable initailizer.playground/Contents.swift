import UIKit
import Foundation

//MARK: - failable initializer
// 이니셜라이저가 초기화의 실패 할 수 있게한다 런타임중
// 실패하면 nil을 리턴~~ 예) 파일 관련 처리

/* init?  , init! */

struct Position {
    let x : Double
    let y : Double
    
    init?(x: Double , y : Double) {
        guard x >= 0.0 , y >= 0.0  else { return nil } // 초기화 실패시 nil 리턴
        
        self.x = x
        self.y = y
    }
    
    init!(value : Double) {
        guard value >= 0.0  else { return nil }
//        self.x = value
//        self.y = value
        self.init(x: value, y: value)
    }
}

var a = Position(x: 12, y: 34)
var b : Position = Position(value: 12)
//b = Position(value: -10)


//MARK: - Deinitializer
/* deinit {
 
 디이니셜라이저는 하나로 제한된다
 우리가 호출하지않아도 인스턴스가 메모리에서 제거되기 직전에 자동으로 호출
 그래서 우리가 직접 호출 하는 문법 제공 하지않음

 
 } */

class Size {
    var width = 0.0
    var height = 0.0
}
class Position1 {
    var x = 0.0
    var y = 0.0
}

class Rect {
    var origin = Position1()
    var size = Size()
    deinit {
        print("deinit \(self)")
    }
}

var r : Rect? = Rect()
r = nil
