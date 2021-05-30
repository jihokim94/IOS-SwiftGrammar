import UIKit

//MARK: -Array
// 저장된 순서대로 인덱스 번호를 가지고 동일한 자료형만 저장 가능 값은 값도 저장가능

let nums = [1,2,3]


let strArray : Array<String>
let strArray2 : [String] // 단축문법을 주로 사용함

let emptyArray : [Int] = []
let emptyArray2 = Array<Int>()
let emptyArray3 = [Int]()

let zeroArray = [Int](repeating: 0, count: 10)
zeroArray

// 배열이 비어있는지 확인 하고 싶다면

nums.count

nums.count == 0

nums.isEmpty
emptyArray.isEmpty

// 요소 접근법

let fruits : [String] = ["Apple" , "Banana" , "Melon"]
fruits[0]
fruits[1]
fruits[0...1]
fruits[fruits.startIndex]
fruits[fruits.index(before: fruits.endIndex)]

emptyArray.first
emptyArray.last

// 배열 요소 추가 삭제

var alphabet = ["A","B","C","D","E","F","G"]
alphabet.append("H") // append를 이용한 마지막 인덱스로 이어 붙이기
alphabet.append(contentsOf: ["I","J"]) // contentOf 시퀀스를 통한 배열 이어붙이기

alphabet.insert("a", at: 0) // 특정 인덱스에 배열 추가
alphabet.insert(contentsOf: ["b","c"], at: 1)

alphabet[0...2] = ["x","y","z"]
alphabet

// 교체할 컬렉션을 가지고 변경하고 싶다면
let replaceCollect = ["a","b","c"]
alphabet.replaceSubrange(0...2, with: replaceCollect) // 교체를 원하는 range<Int> , Collection 인자 주기~

alphabet[0...2] = ["z"]
alphabet
alphabet[0..<1] = [] // 0번 인덱스 잘라버리기
alphabet

// 배열 요소 삭제 !

alphabet.remove(at: 6) //특정 인덱스 배열 삭제
alphabet.removeFirst() // 첫번째 인덱스 삭제후 삭제된 요소 리턴
alphabet.removeFirst(2) // 첫번 인덱스 부터 삭제할 인덱스 개수
alphabet

alphabet.popLast() // 마지막 인덱스 삭제 및 삭제된 인덱스 리턴~
alphabet
alphabet.removeAll() // 전체 삭제
alphabet.isEmpty
alphabet.popLast()

// 특정 배열 구간 삭제
alphabet = ["A","B","C","D","E","F"]
alphabet.removeSubrange(1...3) // 인덱스 1 부터 3까지 삭제
alphabet[0...2] = []
alphabet


//MARK: - 배열 비교 Comparing Arrays

let a = ["A","B","C"]
let b = ["a","b","c"]

a == b
a != b

a.elementsEqual(b)
a.elementsEqual(b) { (lhs ,rhs) in
    return lhs.caseInsensitiveCompare(rhs) == .orderedSame
}

// finding Elements

let numbers = [1,2,3,4,5,6,7,8,9,0,2,3,4,5,6]

numbers.contains(1)
numbers.contains(11)

numbers.contains { asd in
    return asd % 2 == 0
}

numbers.first
let asd = numbers.first { (n) -> Bool in // 주어진 클로저 조건에 맞는 첫번째 인덱스밸류가 리턴된다 조건에 맞은 인덱스밸류 !!!!!!!
    return n % 2 == 0
}
if let a = asd {
    print (a)
}

numbers.firstIndex(of: 1)
numbers.firstIndex { (n) -> Bool in
    return n % 2 == 0
}

numbers.lastIndex(of: 5)
