import UIKit

enum DataParsingError : Error {
    case invalidType
    case invalidField
    case missingRequiredField(String)
}

func parsing(data : [String : Any]) throws { //에러를 던진다~
    guard let _  = data["name"] else {
        throw DataParsingError.missingRequiredField("name")
    }
    guard let _ = data["Age"] as? Int else {
        throw DataParsingError.invalidType
    }
    // throw는 에러가 발생될때만 호출~
    //parsing
}

//MARK: -try Statement

//throws 가 포함되있는 메소드는 반드시 try를 함께 호출 해야한다.
try? parsing(data: ["name":""])

do {
    try parsing(data: ["name":""])
    
} catch DataParsingError.invalidType {
    print("invalide type error")
}catch{
    print("handle error")
} // 패턴이 없는 catch문 같은경우는 항상 제일 마지막에 배치 해야함

// throws를 이용한 패턴이 없는 catch 블록
func handleError() throws {
    do {
        try parsing(data: ["name" : ""])
    } catch {
        if let error = error as? DataParsingError {
            switch error {
            case .invalidField:
                print("invalid type")
            case .invalidType:
                print("invalid Field")
            case .missingRequiredField("name"):
                print("invalid type")
            default:
                print(error)
            }
        }
    }
}

//MARK: -optional try


if let _ = try? parsing(data: [:]) {
    print("sucess")
}else {
    print("fail")
}

do {
    try parsing(data: [:])
    print("sucess")
} catch {
    print("fail")
}

try? parsing(data: [:])
//try! parsing(data: [:])


//MARK: -defer Statements

func processFile(path : String) {
    print("1")
    let file = FileHandle(forReadingAtPath: path)
    
    defer { // defer문의 실행은 함수가 종료될때 까지 연기되었다가 마지막에 실행됨
        print("2")
        file?.closeFile() // 오류가 뜨던 어쨌든간에 file은 사용하고 무조건 종료해줘야함 그래서 디퍼 쓰는거임
    }
    if path.hasSuffix(".jag") {
        print("3")
        return
        
    }
    print("4")
    
    
}

let file = "asd.jpg"

processFile(path: file)


func testDefer() {
    print("testing Defer")
    defer {
        print("1")
    }
    defer {
        print("2")
    }
    defer {
        print("3")
    }
    print("4")
}

testDefer() // 디퍼문은 호출된 순서대로 예약된다 스택과 똑같다고 보면됨 예약된순서는 1 2 3 호출된 순서는 반대로 3 2 1


//MARK: -result Type


import Foundation

print("result Type start")


enum NumberError: Error {
    case negativeNumber
    case evenNumber
}

enum AnotherNumberError: Error {
    case tooLarge
}

func process(oddNumber: Int) throws -> Int {
    guard oddNumber >= 0 else {
        throw NumberError.negativeNumber
    }
    
    guard !oddNumber.isMultiple(of: 2) else {
        throw NumberError.evenNumber
    }
    
    return oddNumber * 2
}

do {
    let result = try process(oddNumber: 10001)
    print(result)
} catch let myErr as NumberError{
    switch myErr {
    case .evenNumber:
        print("evenNumber")
    case .negativeNumber:
        print("negativeNumber")
    }
}catch {
    print(error.localizedDescription)
}

let result = Result {
    try process(oddNumber: 1)
}
switch result {
case .success(let data):
    print(data)
case .failure(let error):
    print(error.localizedDescription)
}


func processResult(oddNumber: Int) -> Result<Int,NumberError> { // 성공시 인티져 리턴 , 실패시 쓰로우는 numberError
    guard oddNumber >= 0 else {
        return .failure(.negativeNumber)
    }
    
    guard !oddNumber.isMultiple(of: 2) else {
        return .failure(.evenNumber)
    }
    
    return .success(oddNumber * 2)
}


let result2 = processResult(oddNumber: 1)
switch result2 {
case .success(let data):
    print(data)
case . failure(let error) :
    print(error.localizedDescription)
}

if let result = try? result2.get() { // 옵셔널을 통해 에러처리 코드를 더욱 단순하게 할수도 있음
    print(result)
}


