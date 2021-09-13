import UIKit
import Foundation

struct Size {
    var width : Double
    var height : Double
    
    init(w : Double , h : Double) {
        self.width = w
        self.height = h
    }
    // 코드가 단순한 만큼 유지보수 수월해짐 델리게이션 하는 이니셜라이저만 수정하면 개꿀~
    init(value : Double) {
        self.init(w: value, h: value)
    }
}



class Figure {
    let name : String

    init(name : String) {
        self.name = name
    }
    convenience init() {
        self.init(name : "unknown")
    }
}

class Rectangle : Figure {
    var height = 0.0
    var width = 0.0
    
    init(n : String , w: Double , h : Double) {
        width = w
        height = h
        super.init(name: n) // 부모 클래스의 이니셜라이저 호출
    }
    convenience init(value : Double) {
        self.init(n: "rect" , w: value , h: value) // 동일한 클래스의 이니셜라이저 호출
    }
}

class Square : Rectangle {
    convenience init(value : Double) {
        self.init(n: "square" , w: value , h: value) // 상속 받은 디지네이티드 이니셜라이저
    }
    convenience init(){
        self.init(value : 0.0) // 상속 받은 컨비니언스 이니셜라이져
        
    }
}
