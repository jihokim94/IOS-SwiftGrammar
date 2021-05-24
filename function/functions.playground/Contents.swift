import UIKit

// 함수 형식
//func <#name#>(<#parameters#>) -> <#return type#> {
//    <#function body#>
//}

func sayHello() {
    print("Hello , Swift")
}
sayHello()

func add() -> Int {
    return 1+2
}

if add() == 3 {
    print("sum = \(add())")
}

func doSomething() {
    let rnd = Int.random(in: 0...10)
    
    if rnd % 2 == 1 {
        return
    }
    print(rnd) // 짝수만 프린트
}

//MARK: -with parameter

/*
 former parameter 함수에서 파라미터 식별자
 actual parameter 함수 파라마티로 전달되는 값,인자
 
 ex) func add( a: Int , b : Int)  a , b 는 former parameter
    add( a: 1 , b: 2) 1 ,2 actual parameter , 인자 , argument
 */

func sayHello2(name: String = "Stranger"){
    print("hello, \(name)")
}
sayHello2() // 기본 파라미터로 인자 복사됨
sayHello2(name: "Swift")

//MARK: -argument Label : 함수의 가독성을 높이기 위해서

func sayHello2(to name: String) {
    print("Hello , \(name)")
}
sayHello2(to: "John")

func sayHello(_ name: String) {
    print("Hello , \(name)")
}
sayHello("Swift") // argument label 을 생략한 경우는 인자를 전달할시에도 생략해야함  왼쪽과 같이


//MARK: -variadic Parameter

func printSum(of nums : Int...) {
    var sum = 0
    for num in nums {
        sum += num
    }
    print(sum)
}


printSum(of: 1,2,3)

//MARK: -In-Out Parameter

var num1 = 12
var num2 = 34

func swapNumber (_ a : inout Int , with b: inout Int){ // 기본값 선언도 불가 아규먼트 같은경우 &를 붙여야함
    let temp = b
    b = a
    a = temp
}

num1
num2

swapNumber(&num1 , with: &num2)

num1
num2

//MARK: -function types

//MARK: -implicit return

func add2(a : Int , b: Int) -> Int {
    a+b // 표현식이 항상 하나여야합니다~ 아닐경우는 꼭 return을 써야함 이같은것은 클로져같은 다른곳에서도 이용할수있음
}









