import UIKit
//MARK: -Struct

//struct StructName {
//    property
//    method
//    init(<#parameters#>) {
//        <#statements#>
//    }
//    subscript
//}

struct Person {
    var name : String
    var age : Int
    
    func speak() {
        print("Hello")
    }
}

let p1 = Person(name: "Steve", age: 50)

let name = "Paul"
name

p1.name
p1.age
p1.speak()

//MARK: -class

//class {
//    deinit
//
//}

class PersonForClass {
    var name = "John Doe"
    var age = 0
    
    func speak(){
        print("Hello")
    }
}

//MARK: -initializer Syntax

let str = "123"
let num = Int(str)

class Position {
    var x : Double
    var y : Double
    
    init() {
        x = 0.0
        y = 0.0
    }
    init(value : Double) {
        x = value
        y = value
    }
}

let a = Position()
a.x
a.y

let b = Position(value: 200.0)
b.x
b.y


//MARK: -value Types vs Reference Types

struct PositionValue {
    var x = 0.0
    var y = 0.0
}

class PositionObject {
    var x = 0.0
    var y = 0.0
}

var v = PositionValue()

var o = PositionObject()

var v2 = v
var o2 = o

v2.x = 12
v2.y = 34
v
v2

//구조체 v2의 값을 바꿔도 v의 값은 바뀌지않음 복사본만 바뀜

o2.x = 12
o2.y = 34

o
o2
// 클래스는 참조를 전달 하므로 어떤 변수를 통해서 속성을 바꾸드라도 항상 같은 대상을 바꾼다 복사본과 원본 둘다 바뀜

//MARK: -항등 연산자 레퍼런스 타입을 비교 할때 필요 struct 와 class 비교 시

class A {
    
}

let a1 = A()
let b1 = a1
let c1 = A()

a1 === b1 // 같은 주소값을 가지는 복제본과 원본
a1 !== b1 // 주소값이 같으므로

a1 !== c1 // 주소값이 다른 인스턴스임

//MARK: -Nested Types

class One {
    struct  Two {
        enum Tree {
            case a
            
            class Four {
                
            }
        }
    }
    var a = Two()
}

let two : One.Two = One.Two()







