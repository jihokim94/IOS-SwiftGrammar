import UIKit
//MARK: -instance Method

class Sample {
    var data = 0
    static var sharedData = 123
    
    func dosomething()  {
        print(data)
        Sample.sharedData
    }
    func call()  {
        dosomething()
    }
}
struct Size02 {
    var width = 0.0
    var height = 0.0
    
   mutating func enlarge()  { // 구조체 안의 속성값을 바꿔야 할때는 꼭 함수앞에 mutating이 들어가야한다
        width += 1.0
        height += 1.0
    }
}

// 인스턴스 생성

let a = Sample()
a.data
a.dosomething()
a.call()

var s = Size02() // 구조체 인스턴스는 항상 var
s.enlarge()

//MARK: -Type Method
// 그냥 인스턴스 참조해서 나오는 함수~

class Circle {
    static let pi = 3.14
    var radius = 0.0
    
    func getArea() -> Double {
        return radius * radius * Circle.pi
    }
    
    class func printPi() {
        print(pi)
    }
}

Circle.printPi()

class StrokeCircle : Circle {
    override static func printPi() { // 상속받은 부모로 부터의 메소드를 오버라이드 하기 위해서는 펑션 앞에 class를 꼭 붙여야한다
        print("자식 파이" , pi)
    }
}

StrokeCircle.printPi()
