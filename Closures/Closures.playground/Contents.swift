import UIKit

// 클로져와 펑션 함수는 서로 호환한다. 자료형이같다면 같이 리턴가능
//{ (<#parameters#>) -> <#return type#> in
//    <#statements#>
//}


let c = { print("hello , Swift")} // 파라미터가 없고 리턴이 없는 클로져
c() // 초기화한 함수 실행

let c2 = { (str:String) -> String in
    return "Hello , \(str)"
}

let result = c2("Closure") // 클로져 호출시에는 알규먼트 레이블이 없어도 됨
print(result)


typealias SimpleStringClosure = (String) -> String

func perform(closure: SimpleStringClosure) {// String을 파라미터로 받고 String을 반환하는 함수를 인자로 받음
    print(closure("iOS"))
}
perform(closure: c2)


// 인라인 클로져
perform(closure: { (str:String) -> String in
    return "Hi , \(str)"
    
})
perform { str in
    return "Hi , \(str)"
}


import Foundation

let product = ["MacBook Air" , "MacBook Pro" , "iMac" , "iMac Pro" , "Mac Pro" , "Mac mini" , "iPad Pro" ,"iPad" , "iPad mini" , "iPhone Xs" , "iPhone Xr" , "iPhone 8" , "iPhone 7" ,"AirPods" , "Apple Watch Series 4" , "Apple Watch Nike+"]

// 필터링~~~
var proModels = product.filter ({ (name : String) -> Bool in
    return name.contains("Pro")
})
print(proModels)

// 정렬 sorted
proModels.sort(by: { (lhs : String , rhs : String) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedAscending // 오름차순 순위
})
print(proModels) // 오름차순으로 소팅됨 음허허~~

// 코드의 실행을 지연 시킬예정
print("Star")


DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
    print("End")
}) // 리턴형이 없는 Void

DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
    print("End")
}

//MARK: -Syntax Optimization 문법 최적화 !
// 본래의 최적화 이전의 클로져 문을보고

//1.
product.filter ({ (name : String) -> Bool in
    return name.contains("Pro")
})
// 2. 파라미터 와 리턴형을 생략한다
product.filter { (name) in
    return name.contains("Pro")
}
// 3. // 파라미터와 in  ex ) (name) in 지우고 파라미터를 $0 알규먼트로 대체한다 파리미터 순서에따라 $0~부터 대입된다
product.filter { // 인라인 클로져
    return $0.contains("Pro")
}
//4. trailing closure
product.filter(){
    $0.contains("Pro")
}
product.filter{
    $0.contains("Pro")
}




//MARK: -escaping closure

func performEcaping(closure : @escaping () -> ()) { // 함수의 실행을 탈출하고도 진행함
   
    var a = 12
    print("Start")
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
        print(a) // 일반적으로는 함수의 실행은 종료되어 a 지역변수의 값을 참조 할 수 없지만 이스케핑 클로져 안에서는 끝날때 까지 값을 받을수 있다.!
        closure()
    }
    print("End")
}

performEcaping(closure: {
    print("Closure after 3 Seconds")
})

//MARK: -auto closure
  // {} 브라켓없이 자동으로 클로져를 랩핑해줌 인자 전달시 {} 필요없음
func getRandomNumber() -> Int {
    return Int.random(in: 1...10)
}

func takeAutoclosure (param : @autoclosure @escaping () -> Int) { // autoclosure일시에는 파라미터를 받을 수 없는 경우만 쓸 수 있음 () -> any자료형 등등
    print(#function)
    DispatchQueue.main.asyncAfter(deadline: .now()+1) {
        print(param())
    }
    
}
takeAutoclosure(param: Int.random(in: 1...10))
takeAutoclosure(param: getRandomNumber())







