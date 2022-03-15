import UIKit
import Foundation
//MARK: -property

struct Person {
    var name : String = "John Oshe"
    var age : Int = 19
}

var p = Person() // 구조체가 let 인스턴트 생성시 구조체 속성도 상수로 인식됨니다 그러므로 값을 변경 할수 없음
// 위와 같이 가변이 가능한 변수로 선언 하여 값을 바꿔야함
p.age
p.name

p.age = 30

//MARK: -Lazy Stored Properties

struct Image {
    init() {
        print("new Image")
    }
}

struct BlogPost {
    let title : String = "Title"
    let content : String = "Content"
    lazy var attachment : Image = Image()
    
    let date : Date = Date()
    
    lazy var formattedDate : String = {
       let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        return f.string(from: date)
        // closure로 표현 시 멤버변수의 값을 이용 필요시  lazy var를 이용해 초기화 시점을 미뤄야 한다.
    }()
}

var post = BlogPost()

// 본래 초기화 즉시 실행 가능하나 lazy 를 추가시 초기화는 하되 실행 시점에 완벽히 초기화가 일어난다
post.attachment
post.formattedDate


//MARK: -Computed Properties 계산 속성
// 무조건 var 변수명 : 자료형을 선언 해야한다. let 불가

class Person01 {
    var name : String
    var yearOfBirth : Int
    
    init(name : String , year :Int) {
        self.name = name
        self.yearOfBirth = year
    }
    
    var age : Int {
        get {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            return year - yearOfBirth
        }
        set {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            yearOfBirth = year - yearOfBirth
        }
    }
}

let p1 = Person01(name: "John Doe", year: 2002)
p1.yearOfBirth
p1.age
p1.name


//MARK: -property Observer

class Size {
    var width = 0.0 {
        willSet {
            print(width , "=>" , newValue)
        }
        didSet {
            print(oldValue , "=>" , width)
        }
    }
  
}

let s = Size()
s.width = 123

//MARK: -type property
// 타입 속성은 인스턴스 속성이 아니라서 클래스에서 뽑아야합니다~ static~ new 하지 않아도되 자바때 처럼
class Math {
    static let pi = 3.14
}
let m = Math()
//m.pi
Math.pi

enum Weekday : Int {
    case sunday = 1, monday , tuesday , wednesday, thursday , friday , saturday
    
    static var today : Weekday { // get set
        let cal  = Calendar.current
        let today = Date()
        let weekday = cal.component(.weekday, from: today)
        return Weekday(rawValue: weekday)!
    }
}

print(Weekday.today)

//MARK: -self & super

//class Size01 {
//    var width = 0.0
//    var height = 0.0
//
//    func calcArea() -> Double {
//        return width * height
//    }
//    var area : Double {
//        return self.calcArea()
//    }
//
//}
struct Size01 {
    var width = 0.0
    var height = 0.0
    
    mutating func reset(value : Double) {
        self = Size01(width: value, height: value)
    }
}



