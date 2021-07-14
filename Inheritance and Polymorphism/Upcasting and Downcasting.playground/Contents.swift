import UIKit

//MARK: -Upcasting and Downcasting


class Figure {
    let name : String

    init(name : String) {
        self.name = name
    }
    func draw() {
        print("draw \(name)")
    }
}

class Rectangle : Figure {
    var width = 0.0
    var height = 0.0

    override func draw() {
        super.draw()
        print("🔳 \(width) x \(height)")
    }
}

class Square : Rectangle {
    var check = 0.0
}

let f = Figure(name: "Unknown")
f.name

let r  = Rectangle(name: "Rect")
r.width
r.height
r.name

let s : Figure = Square(name: "Square") // 업캐스팅 당연히 피겨에는 width heigt 속성이 없으니깐 안되지 s는 Figure인스턴스로 초기화
//s.width
//s.height
s.name
s.draw()





let downcastedS = s as! Rectangle // 부모를 자식으로 다운캐스팅
downcastedS.name
downcastedS.width
downcastedS.height // 원래 형식으로 다운캐스팅 하는건 무조건됨


class Rhombus : Square {
    var angle = 45.0
}


//let dr = s as? Rhombus //error

//let asd = Rhombus(name: "1")
//asd.height
//asd.angle



//MARK: -Type Casting

//타입캐스팅 연잔자 ex) expression is Type


class Figure1 {
    let name : String
    
    init(name: String) {
        self.name = name
    }
    func draw()  {
        print("draw \(name)")
    }
}

class Triangle : Figure1 {
    override func draw() {
        super.draw()
        print("🔺")
    }
}
class Rectangle1: Figure1 {
    var width = 0.0
    var height = 0.0
    
    override func draw() {
        super.draw()
        print("▪️ \(width) x \(height)")
    }
}

class Square1 : Rectangle1 {
    
}
class Circle: Figure1 {
    var radius = 0.0
    
    override func draw() {
        super.draw()
        print("🔴")
    }
}





let num = 10
num is Int
num is String
num is Double

let t1 = Triangle(name: "Triangle")
let r1 = Rectangle1(name: "Rectangle")
let s1 = Square1(name: "Square")
let c1 = Circle(name: "Circle")

r1 is Rectangle1
r1 is Figure1
r1 is Square1

// 타입 캐스팅 연산자

let nsstr = "str" as NSString

//"str" as Int

t1 as? Triangle
t1 as! Triangle


// 상속관계에서 업캐스팅은 항상 성공하고 안전하지~

var upcasted : Figure1 = s1 // square1으로 업캐스팅
upcasted = s1 as Figure1
upcasted.name

upcasted as? Square1
upcasted as! Square1 // 원래 형식으로 다운캐스팅 가능
upcasted as? Rectangle1
upcasted as! Rectangle1

upcasted as? Circle
//upcasted as! Circle

if let c = upcasted as? Circle {
    //만일 다운캐스팅을 해야 할 시에는 컨디셔널 캐스팅 방법과 옵셔널 체크와 같이 하는것이 좋다
}

let list = [t1,r1,s1,c1] // 동일한 자료형은 없지만 상속 받는 클래스(Figure1)로  업캐스팅 된다
type(of: list)

for item in list {
    item.draw()
    //item.radius 는 직접 들어갈수 없음
    if let c = item as? Circle {
        c.radius
    }
}

//MARK: -Any , AnyObject

var data : Any = 1
data = 2.3
data = "str"
data = [1,2,3]
data = NSString()

var obj : AnyObject = NSString() // 참조형식만 저장 가능

if let str = data as? String {
    print(str.count)
}else if let list = data as? [Int] {
    
}

//MARK: -Type Castring Pattern

switch data {
case let str as String:
    print(str.count)
case let list as [Int]:
    print(list.count)
case is Double :
    print("Double Value")
default:
    break
}

//MARK: -overLoading

// 오버로딩을 통해 레퍼런스확인을 줄일수 있고 파라미터에 따라 같은 기능한다면 쓰는게 좋은 습관이 될듯 싶다!
func process(value : Int) {
    print("process IntValue")
}
func process(value : String) {
    print("process String Value")
}
func process(value : String , anotherValue : String) {
    
}
func process (_ value : String ){
    print("알규먼트 생략 \(value)")
}
func process (value : Double) ->Int {
    Int(value)
}
func process (value : Double) ->String? {
    return String(value)
}

process(value: 123)
process(value: "123")
process("123")



