import UIKit

let a = 20
let b = 34

//MARK: -Equal to Operator

a == b

"Swift" == "swift"

let c =  12.34

//a == c  같은 자료형만 비교가 가능하다

//MARK: -Not equal to Operator

a != b

//MARK: -Greater than Operator

a > b //  20 > 34

"swift" > "Swift"  // 아스키 코드상 소문자 s가 더 크기때문에 true 리턴

//MARK: -Greater than or equal  to Operator

a >= b

7 > 7
7 >= 7

//MARK: -Logical Not Operator

!true

let a1 = 12
let b1 = 34

a1 < b1
!(a1 < b1)

a1 > 30 && b1 % 2 == 0

true && true
true && false
false && false

//MARK: -Logical OR Operators

a1 > 30 || b1 % 2 == 0

true || true
true || false
false || false
false || true // Or 연산자는 둘중 하나라도 true를 리턴시  최종 true 리턴

//MARK: -Ternary Coditional Operator  삼항연산자 삼항식

let hour = 12
hour < 12 ? "am" : "pm"

if hour < 12 {
    "am"
}else{
    "pm"
}

//MARK: -논리 연산자 판단 in Swift
// 결과를 얻는것에 대한 최소한의 것만 실행함 (단락평가)
var number1 = 1
var number2 = 1

func updateLeft() -> Bool {
    number1 += 1
    return true
}
func updateRight() -> Bool {
    number2 += 1
    return true
}
if updateLeft() || updateRight() {
    number1
    number2
    // Or 연산자는 최소한의 코드만 실행 후 값을 리턴 하기 때문에 left 함수만 실행되었음 사이드 임펙트 발생
}

// 사이트 임펙트 없이 두함수 실행
let resultA = updateLeft()
let resultB = updateRight()

if resultA && resultB {
    
}
number1
number2

//MARK: -Range Operators

1 ... 10 // 1~ 10까지의 범위 , 오름 차순

// 내림 차순은 10 ... 1 과 같이 표현 하기 위해서는 오름 차순에 reversed() 메소드로 뒤집어야함

(1 ... 10).reversed() // 10에서 1까지

var sum = 0
for num in 1 ... 10 {
    num
    sum += num
}
sum

let list = ["A","B","C","D","E"]
list[2...] // 인덱스 2부터 모두
list[...2] // 인덱스 2까지~

sum = 0
for num in 1 ..< 10 { // 10이 범위에 포함 x
    sum += num
}
sum
list
list[..<2]

// 범위 포함 알아보기

let range = 1 ... 5
range.contains(7)
range.contains(1)
range.contains(-1)

//MARK: -Operator Methods

"a" == "a"


struct Point {
    var x = 0.0
    var y = 0.0
}
extension Point: Equatable { // Equatable Protocal 만 선언 되있다면 컴파일러가 자동으로 구조체의 동등성 비교 컴파일을 실행함
    //    static func == (lhs: Point , rhs: Point) -> Bool {
    //        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    //    }
}
let p1 = Point(x: 12, y: 34)
let p2 = Point(x: 67, y: 89)

p1 == p2
p1 != p2

extension Point {
    static postfix func ++(pt: inout Point) -> Point{ // postfix
        let ret = pt
        pt.x += 1
        pt.y += 1
        return ret
    }
    static prefix func -(pt: Point) -> Point{ // prefix
        return Point(x: -pt.x, y: -pt.y)
    }
}
let p3 = -p1
p3.x
p3.y

var p4 = Point(x: 1.0, y: 2.0)
let p5 = p4++
p5.x
p5.y

//MARK: -Custom Operators

//prefix

prefix operator +++
extension Int {
    static prefix func +++(num : inout Int){
        num += 2
    }
}
var prefixNum = 1
+++prefixNum
prefixNum


precedencegroup MyPrecedence {
    higherThan : AdditionPrecedence // + - 보다 연산순위가 높음
}


//infix
infix operator *+* : MyPrecedence//MultiplicationPrecedence // 연산의 우선 순위를 지정함으로 다항연산의 계산 접근을 준다

extension Int {
    static func *+*(left: Int , right : Int) -> Int {
        return (left * right) + (left * right)
    }
}

1 *+* 2
1 *+* 2 + 3

// 우선순위 그룹 만들기
//AdditionPrecedence + -
//MultiplicationPrecedence * /
//ComparisonPrecedence < <= > >= == !=
//AssignmentPrecedence = += -= *= /=
//precedencegroup Name{
//    higherThan: LowerGroupName
//    lowerThan: HigherGroupName
//    associativity : left, right ,none
//}

















