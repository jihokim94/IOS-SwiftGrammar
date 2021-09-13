import UIKit

//MARK: - Designated Initailizer

class Position {
    var x : Double
    var y : Double
    
    init(x : Double , y : Double) {
        self.x = x
        self.y = y
    }
    //    convenience Initializer
    convenience init(x : Double) {
        self.init(x : x , y : 0.0)
    }
    
}

//MARK: - initailizer Inheritance

class Figure {
    var name : String
    
    init(name : String) {
        self.name = name
    }
    
    func draw()  {
        print("draw \(name)")
    }
    convenience init() {
        self.init(name : "unknown")
    }
}

class Rectangle : Figure {
    var width : Double = 0.0
    var height : Double = 0.0
    
    init(name : String, width : Double , height : Double) {
        self.width = width
        self.height = height
        super.init(name: name)
    }
    
    override init(name: String) {
        width = 0
        height = 0
        super.init(name: name)
    }
    // 컨비니언스 이니셜라이져는 항상 같은 클래스의 init을 불러온다 그래서 오버라이딩이라는 개념이 적용되지않는다
    convenience init() {
        self.init(name : "unknown")
    }
}

//MARK: - required Initializer
// 모든 서브클래스에서 구현해야하는 필수 생성자
class Figure1 {
    var name : String
    
    required init(name : String) {
        self.name = name
    }
    
    func draw()  {
        print("draw \(name)")
    }
}

class Rectangle1 : Figure1 {
    var width : Double = 0.0
    var height : Double = 0.0
    
    init() {
        self.width = 0.0
        self.height = 0.0
        super.init(name: "unknown")
    }
    
    required init(name: String) {
        width = 0.0
        height = 0.0
        super.init(name: name)
    }
    
}







