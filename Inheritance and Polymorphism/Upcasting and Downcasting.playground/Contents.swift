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
        print("π³ \(width) x \(height)")
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

let s : Figure = Square(name: "Square") // μμΊμ€ν λΉμ°ν νΌκ²¨μλ width heigt μμ±μ΄ μμΌλκΉ μλμ§ sλ FigureμΈμ€ν΄μ€λ‘ μ΄κΈ°ν
//s.width
//s.height
s.name
s.draw()





let downcastedS = s as! Rectangle // λΆλͺ¨λ₯Ό μμμΌλ‘ λ€μ΄μΊμ€ν
downcastedS.name
downcastedS.width
downcastedS.height // μλ νμμΌλ‘ λ€μ΄μΊμ€ν νλκ±΄ λ¬΄μ‘°κ±΄λ¨


class Rhombus : Square {
    var angle = 45.0
}


//let dr = s as? Rhombus //error

//let asd = Rhombus(name: "1")
//asd.height
//asd.angle



//MARK: -Type Casting

//νμμΊμ€ν μ°μμ ex) expression is Type


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
        print("πΊ")
    }
}
class Rectangle1: Figure1 {
    var width = 0.0
    var height = 0.0
    
    override func draw() {
        super.draw()
        print("βͺοΈ \(width) x \(height)")
    }
}

class Square1 : Rectangle1 {
    
}
class Circle: Figure1 {
    var radius = 0.0
    
    override func draw() {
        super.draw()
        print("π΄")
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

// νμ μΊμ€ν μ°μ°μ

let nsstr = "str" as NSString

//"str" as Int

t1 as? Triangle
t1 as! Triangle


// μμκ΄κ³μμ μμΊμ€νμ ν­μ μ±κ³΅νκ³  μμ νμ§~

var upcasted : Figure1 = s1 // square1μΌλ‘ μμΊμ€ν
upcasted = s1 as Figure1
upcasted.name

upcasted as? Square1
upcasted as! Square1 // μλ νμμΌλ‘ λ€μ΄μΊμ€ν κ°λ₯
upcasted as? Rectangle1
upcasted as! Rectangle1

upcasted as? Circle
//upcasted as! Circle

if let c = upcasted as? Circle {
    //λ§μΌ λ€μ΄μΊμ€νμ ν΄μΌ ν  μμλ μ»¨λμλ μΊμ€ν λ°©λ²κ³Ό μ΅μλ μ²΄ν¬μ κ°μ΄ νλκ²μ΄ μ’λ€
}

let list = [t1,r1,s1,c1] // λμΌν μλ£νμ μμ§λ§ μμ λ°λ ν΄λμ€(Figure1)λ‘  μμΊμ€ν λλ€
type(of: list)

for item in list {
    item.draw()
    //item.radius λ μ§μ  λ€μ΄κ°μ μμ
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

var obj : AnyObject = NSString() // μ°Έμ‘°νμλ§ μ μ₯ κ°λ₯

if let str = data as? String {
    print(str.count)
}else if let list = data as? [Int] {
    print("111")
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

// μ€λ²λ‘λ©μ ν΅ν΄ λ νΌλ°μ€νμΈμ μ€μΌμ μκ³  νλΌλ―Έν°μ λ°λΌ κ°μ κΈ°λ₯νλ€λ©΄ μ°λκ² μ’μ μ΅κ΄μ΄ λ λ― μΆλ€!
func process(value : Int) {
    print("process IntValue")
}
func process(value : String) {
    print("process String Value")
}
func process(value : String , anotherValue : String) {
    
}
func process (_ value : String ){
    print("μκ·λ¨ΌνΈ μλ΅ \(value)")
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



