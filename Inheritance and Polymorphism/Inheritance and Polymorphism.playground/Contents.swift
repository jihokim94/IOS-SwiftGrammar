import UIKit

//MARK: -상속 inheritance

class Figure {
    var name = "Unknown"
    
    init(name : String) {
        self.name = name
    }
    func draw () {
        print("draw \(name)")
    }
}

class Circle : Figure {
    var radius = 0.0
    
    var diameter : Double {
        return radius * 2
    }
    override func draw () {
        super.draw()
        print("🍎  \(name)")
    }
}

let c = Circle(name: "Circle")
c.radius
c.draw()

// 서브 클래스는 수퍼 클래스로 부터 멤버를 상속 받는다

final class Rectangle : Figure {
    var width = 0.0
    var height = 0.0
}

// 파이널 클래스는 다른 클래스에서 상속해줄수 없다.
//class square : Rectangle {
//} 상속 불가 오류 메세지 뜸 ! 이유는 위와 같음

//MARK: -Overriding

class Oval : Circle {
    override var diameter: Double {
        get {
            return super.diameter
        }
        set {
            super.radius = newValue / 2
        }
        
    }
}


let o = Oval(name: "Oval")
o.name
o.radius = 2
o.diameter
o.draw()




