import UIKit

//MARK: -Enumeration Type 열거형

// 사용하는 이유는 코드의 가독성과 안정성이 높아짐
let left = "left"
let center  = "center"
let right = "right"

var alignment = center

if alignment == "center"{
    print(alignment)
}

enum Alignment {
    case left
    case right
    case center
}

Alignment.center

var textAlignment = Alignment.center

textAlignment = .left

if textAlignment == .center {
    
}
switch textAlignment {
case .left:
    print("left")
case .right:
    print("right")
case .center:
    print("center")
}

//MARK: -Raw Values

enum Alignment02 : Int {
    case left
    case right = 100
    case center
}
// 0 부터 시작 원시값은 1 씩 증가함
//아래 값을 확인해봐~
Alignment02.left.rawValue
Alignment02.right.rawValue
Alignment02.center.rawValue

Alignment02(rawValue: 0)
Alignment02(rawValue: 200)

enum Weekday : String {
    case sunday
    case monday = "MON"
    case tuesday
    case wednesday
    case thursday
    case firday
    case saturday
}

Weekday.monday.rawValue
Weekday.tuesday.rawValue

enum ControlChar : Character {
    case tap = "\t"
    case newLine = "\n"
}


//MARK: - Associated Values

enum VideoInterface {
    case dvi(width: Int , height : Int)
    case hdmi(Int , Int , Double , Bool)
    case displayPort(CGSize)
}

var input = VideoInterface.dvi(width: 2048, height: 1536)


switch input {
case .dvi(width: 2048, height: 1536):
    print("dvi 2048 x 1536")
case .dvi( 2048, _):
    print("dvi 2048")
case .dvi:
    print("dvi")
case .hdmi(let width, let height,let version, var audioEnable):
    print("hdmi \(width) x \(height) ")
case let .displayPort(size):
    print("dp")
}


//MARK: -enumeration case pattern

enum Transprotation {
    case bus(number : Int)
    case taxi(company : String , number : Int)
    case subway (lineNumber : Int , express : Bool)
}

var tpt = Transprotation.bus(number: 7)

switch tpt {
case .bus(let n):
    print(n)
case .taxi(company: let company, number: let number):
    print(company , number)
case .subway(lineNumber: let lineNumber, express: let express):
    print(lineNumber , express)
}

tpt = Transprotation.subway(lineNumber: 2, express: false)

if case let .subway(2 , express) = tpt { // 이코드는 쉽게 말해서 2호선 인지 여부를 확인후 급행여부에 따라 분기하는것
    if express {
        
    }else {
        
    }
}

if case .subway (_ , true) = tpt {
    print("express")
}

let list = [
    Transprotation.subway(lineNumber: 2, express: false),
    Transprotation.bus(number: 4421),
    Transprotation.subway(lineNumber: 7, express: true),
    Transprotation.taxi(company: "SeoulTaxi", number: 1234)
]

print("모든 지하철 라인 확인")
for case let .subway(n, _) in list {
    print("subway \(n)")
}
print("급행 운행중인 지하철 라인 확인")
for case let .subway (n , true) in list {
    print("subway \(n)")
}
for case let .subway (n , true) in list where n == 2 { // 2번라인에 급행 여부 확인
    print("subway \(n)")
}

//MARK: -

enum Weekdays : Int , CaseIterable {
    case sunday = 100
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday

}

let ranNumber = Int.random(in: 0 ... Weekdays.allCases.count)
Weekdays(rawValue: ranNumber)
Weekdays.allCases.randomElement()

for w in Weekdays.allCases{
    print(w)
}
//MARK: - Nonfrozen enumeration

enum EmailService {
    case onlineLesson
    case offlineLesson
    case onlineCamp
}

var service = EmailService.onlineLesson
switch service {

case .onlineLesson:
    print("Send email to people for onlineLesson")
case .offlineLesson:
    print("Send email to people for offlineLesson")
//case .onlineCamp:
//    print("Send email to people for onlineCamp")
@unknown default : break
}

