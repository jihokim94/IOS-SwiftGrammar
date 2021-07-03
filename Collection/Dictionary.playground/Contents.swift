import UIKit

//MARK: -dictionary01

//Dictionary<k,v> 키와 밸류로 이루어진 배열이라고 생각하면 된다~

//let dict1 : Dictionary<String,Int>
//let dict2 : [String : Int]

//MARK: -Creating a Dictionary


let words = ["A" : "Apple" , "B" : "Banana" , "C":"City"]

let emptyDict1 : [String : String] = [:]
let emptyDict2 = [String : String]()
let emptyDict3 = Dictionary<String,String>()

//MARK: -Inspecting a Dictionary

words.count // 딕셔너리 elements 개수 확인
words.isEmpty // 비어있는지 확인


// 키를 이용하여 value값을 찾을 수 있음
words["A"]
words["Apple"]

let a = words["E"] // nil 이므로 a의 자료형은 옵셔널 스트링
let b = words[ "E" , default: "Empty"] // 디폴트값 설정


//  키 나열하기
for k in words.keys.sorted() {
    print(k)
}

// 밸류 나열하기
for v in words.values {
    print(v)
}

// 배열 형태로 키와 밸류 나누기

let keys = Array(words.keys)
let values = Array(words.values)


//MARK: -Adding keys and values

var words2 = [String : String]()
words2["A"] = "Apple"
words2["B"] = "Banana"

words2.count
words2

words2["B"] = "Ball"

words2.count
words2   // 키가 원래 존재하므로 밸류 값만 바꾼다

words2.updateValue("City", forKey: "C")

words2.count
words2

words2.updateValue("Circle", forKey: "C")

words2.count

//MARK: -Removing Keys and Values

words2
words2["B"] = nil // 존재하는 키에 nil값을 초기화 하면 제거된다

words2["Z"] = nil

words2.removeValue(forKey: "A")
words2.removeValue(forKey: "A")
words2.removeAll()

//MARK: -Comparing Dictionary

let a1 = ["A" : "Apple" , "B" : "Banana" , "C":"City"]
let b1 = ["A" : "Apple" , "B" : "banana" , "C":"City"]

a1 == b1 // 밸류 값의 대소문자가 다르기 떄문에 false
a1 != b1

// 대소문자 구분없이 일치 여부 확인을 위해서는 배열 때와 같이 그러나 키가 소팅 되지않았기 때문에 항상 결과가 다를 수 있음
a1.elementsEqual(b1) {  (lhs , rhs) -> Bool  in
    return  lhs.key.caseInsensitiveCompare(rhs.key) == .orderedSame
        && lhs.value.caseInsensitiveCompare(rhs.value) == .orderedSame
}

a1.elementsEqual(b1) { (lhs,rhs)  in
    return  lhs.key.caseInsensitiveCompare(rhs.key) == .orderedSame
        && lhs.value.caseInsensitiveCompare(rhs.value) == .orderedSame
}

// 중요!!!!!!  앞으로 딕셔너리를 비교할 떄는 꼭 정렬을 해놓고 비교해야지만 올바른 값을 뽑아 낼 수 있다.
let a1Sorted = a1.keys.sorted()
let b1Sorted = b1.keys.sorted()

a1Sorted.elementsEqual(b1Sorted) { (lhs , rhs) -> Bool in
    guard lhs.caseInsensitiveCompare(rhs) == .orderedSame else {
        return false
    }
    // 키에따른 밸류값 비교
    guard let lv = a1[lhs] , let rv = b1[rhs] , lv.caseInsensitiveCompare(rv) == .orderedSame else {
        return false
    }
    return true
}

//MARK: -Finding Elements

let wordss = ["A" : "Apple" , "B" : "Banana" , "C":"City"]

let c : ((String , String)) -> Bool = {
    $0.0 == "B" || $0.1.contains("i")
}

wordss.contains(where: c)

let r = wordss.first(where: c)

wordss.filter(c)
//Summary
//Returns a new dictionary containing the key-value pairs of the dictionary that satisfy the given predicate.

