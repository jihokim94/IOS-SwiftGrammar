import UIKit

//MARK: -iteraing collections
// 배열 딕셔너리 셋을 나열해보자~~~

// 배열 나열
print("Array" , "=======")
let arr = [1,2,3]
for num in arr {
    print(num)
}

// set 나열
print("Set" , "=====")
let set: Set = [1,2,3]
for num in set {
    print(num)
} // set을 열거 할때는 정렬 되지 않았다는 것을 기억하자


// 딕셔너리 나열
print("dictionary" , "=====")
let dict = ["A":1 , "B":2 , "C":3]
for (key,value) in dict {
    print(key, value)
} // set과 동일하게 열거 할떄는 정렬되지 않은 상태인걸 기억하자

//MARK: -forEach

//배열을 열거 하는법
print("array" , "=====")
let arr2 = [1,2,3]
arr2.forEach { num in
    print(num)
}

// set 열거
print("Set" , "=====")
let set2 : Set = [1,2,3]
set2.forEach { num in
    print(num)
}
// 딕셔너리 열거
print("Dictionary" , "=====")

let dict2 = ["A":1, "B":2 , "C":3]
dict2.forEach { (key: String, value: Int) in
print(key , value)
}


// 포인 포이치 둘의 차이점
func withForIn() {
    print(#function)
    let arr = [1,2,3]
    for num in arr {
        if num == 1 {
            print(num)
            continue
        }
        print(num)
        return
    }
}

func withForEach(){
    print(#function)
    let arr = [1,2,3]
    arr.forEach { num in
        print(num)
        return
    }
}


withForIn()
withForEach() // 클로져 안에서만 리턴값을 영향을 주기떄문에 루프는 다돌아감

//MARK: KeyValuePairs<k,V>

let words : KeyValuePairs = ["A" : "Apple" , "B" : "Banana" , "C" : "City"]
// 생김새는 딕셔너리와 비슷하지만 인덱스가 순서 대로 저장됨

words.count
words.isEmpty

//키를 통해서 값을 뽑는게 아닌 배열처럼 인덱스로 접근해야함
words[0]
words[0].key
words[0].value

for element in words {
    print(element)
}

// 동일한 순서로 무언가를 표현해야 할 때면 키밸류페어스가 유용하게 쓰인다 ^^!!
// 인서트 업데이트 리무브가 불가능함


