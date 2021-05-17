import UIKit

//MARK: -for-in Loop

print("Hello")

//for 반복상수 in 범위 {
//    반복할 코드
//}

for index in 1 ... 10 {
    print("hello")
    print(index) // 반복 상수 출력 자바에서  i++ 인덱스와 같다
}

for _ in 1 ... 5 { // 반복 상수 생략 '_' 를 통한
    print("hello")
}

let power = 10
var result = 1
for _ in 1 ... power {
    result *= 2
}

result

for num in stride(from: 0, to: 10, by: 3) {
    print(num)
}


// 컬렉션 반복문

let list = ["Apple" , "Banana" , "Orange"]
for fruit in list {
    print(fruit)
}

// for 문은 얼마든지 중첩해서 쓸 수 있다. 예 구구단 같은경우~~


//MARK: -while Statement

//while <#condition#> {
//    <#code#>
//}

var num1 = 1
var sum = 0
while num1 <= 100 {
    sum += num1
    num1 += 1
}

// repeate-while

num1 = 0
repeat {
    num1 += 1
}while num1 < 100
num1 // 자바의 do - while 같은 형태네요~ 일단 repeat의 statement는 실행하고 후행 반복 조건식이 트루면 다시 반복
