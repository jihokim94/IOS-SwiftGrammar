# IOS-SwiftGrammar


Lower Camel Case : function , method , variable , contant

ex) tapButton , userName

Upper Camel Case : type (Class , struct , enumeration , extension ... )

ex) Person , WeatherDelegate ...

스위프트는 대소문자를 구분합니다~~!!

---

콘솔로그를 남기기위한 두가지방법

1. print (  단순 문자열 출력)
2. dump ( 인스턴트의 자세한 설명 description 프로퍼티 ) 까지 출력

---

문자열 보간법 

       \( )   <——

프로그램실행중에 문자열 내에 변수또는 상수의 실질적인 값을 표현하기위해 사용

var name = “김지호"

ex) print(”안녕하세요  \(name)님”) → “안녕하세요 김지호님

---

## 데이터 타입과 상수와 변수의 선언

let 은 상수(변경되지않는) 선언 키워드 

var 변수 (변경가능한) 선언 키워드

## **Bool**

`true`와 `false`만을 값으로 가지는 타입

```
var someBool: Bool = true
someBool = false
// someBool = 0 // 컴파일 오류발생
// someBool = 1 // 컴파일 오류발생

```

## **Int, UInt**

### **Int**

정수 타입. 현재는 기본적으로 64비트 정수형.

```
var someInt: Int = -100
// someInt = 100.1 // 컴파일 오류발생
소수가 아닌 정수타입만 가능하다구~
```

### **UInt**

양의 정수 타입. 현재는 기본적으로 64비트 양의 정수형.

```
var someUInt: UInt = 100
// someUInt = -100 // 컴파일 오류발생
// someUInt = someInt // 컴파일 오류발생 양의 정수가 아니니까 어사인 안됑

```

## **Float, Double**

### **Float**

실수 타입. 32비트 부동소수형.

```
var someFloat: Float = 3.14
someFloat = 3

```

### **Double**

실수타입. 64비트 부동소수형.

```
var someDouble: Double = 3.14
someDouble = 3
// someDouble = someFloat // 컴파일 오류발생

```

## **Character, String**

### **Character**

문자 타입. 유니코드 사용. 큰따옴표(“”) 사용.

```
var someCharacter: Character = "😀"
someCharacter = "👭"
someCharacter = "가"
someCharacter = "A"
// someCharacter = "하하하" // 컴파일 오류발생
print(someCharacter)

```

### **String**

문자열 타입. 유니코드 사용. 큰따옴표(“”) 사용.

```
var someString: String = "하하하 ? " 
someString = someString + "웃으면 복이와요"
print(someString)
"하하하 ? 웃으면 복이 와요" 
```

여러줄 문자열은 큰따옴표 세 개 사용.

```
someString = """ <- 줄바꿈(enter) 큰따음표 사이에 위치해야해~~~
여러줄 문자열을 
사용할 수 있습니다.
첫 줄에 겹따옴표 세 개,
마지막 줄에 겹따옴표 세 개를
사용하면 됩니다. <- 줄바꿈(enter)
"""

// p.s.!!!!! 
someString = """
겹따옴표 세 개인 줄(첫줄, 끝줄)에서
줄 바꿈을 하지 않으면 오류가 발생합니다.
"""

```

---

## **Any**

Swift의 모든 타입을 지칭하는 키워드

```swift
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12
```

> Any 타입에 Double 자료를 넣어두었더라도 Any는 Double 타입이 아니기 때문에 할당할 수 없습니다. 명시적으로 타입을 변환해 주어야 합니다. 타입 변환은 차후에 다룹니다
> 

```
let someDouble: Double = someAny  // 컴파일 오류발생 any는 더블타입이 아니어서 어사인 안됑~~
```

## **AnyObject**

모든 클래스 타입을 지칭하는 프로토콜

> 클래스와 프로토콜에 대한 설명은 차후에 합니다
> 

```
class SomeClass {}

var someAnyObject: AnyObject = SomeClass()
```

**AnyObject는 클래스의 인스턴스만 수용 가능**하기 때문에 클래스의 인스턴스가 아니면 할당할 수 없습니다.

```
someAnyObject = 123.12    // 컴파일 오류발생
```

## **nil**

없음을 의미하는 키워드

> 다른 언어의 NULL, Null, null 등과 유사한 표현입니다.
> 

아래 코드에서 `someAny`는 `Any` 타입이고, `someAnyObject`는 `AnyObject` 타입이기 때문에 `nil`을 할당할 수 없습니다.`nil`을 다루는 방법은 **옵셔널** 파트에서 다룹니다.

```
someAny = nil         // 컴파일 오류발생
someAnyObject = nil   // 컴파일 오류발생
```

## **관련문서**

- [The Swift Programming Language – The Basics](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html)

---

[제목 없음](https://www.notion.so/d2d3a41941c645cab7483bb2fd1cc558)

## **Array**

Array는 멤버가 순서(인덱스)를 가진 리스트 형태의 컬렉션 타입입니다.

> Array 선언 및 생성Array는 여러 리터럴 문법을 활용할 수 있어서 표현 방법이 다양합니다
> 

![https://yagomdotnet-bucket.s3.ap-northeast-2.amazonaws.com/wp-content/uploads/2020/02/09041039/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA-2021-08-09-%E1%84%8B%E1%85%A9%E1%84%8C%E1%85%A5%E1%86%AB-4.09.29.png](https://yagomdotnet-bucket.s3.ap-northeast-2.amazonaws.com/wp-content/uploads/2020/02/09041039/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA-2021-08-09-%E1%84%8B%E1%85%A9%E1%84%8C%E1%85%A5%E1%86%AB-4.09.29.png)

> Array 활용
> 

```swift
integers.append(1)
integers.append(100)

// Int 타입이 아니므로 Array에 추가할 수 없습니다
//integers.append(101.1) error!

print(integers) // [1, 100]

// 멤버 포함 여부 확인
print(integers.contains(100)) // true
print(integers.contains(99)) // false

// 멤버 교체
integers[0] = 99

// 멤버 삭제
integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

// 멤버 수 확인
print(integers.count)

// 인덱스를 벗어나 접근하려면 익셉션 런타임 오류발생
//integers[0]

```

> let을 사용하여 Array를 선언하면 불변 Array가 됩니다
> 

```swift
let immutableArray = [1, 2, 3]

// 수정이 불가능한 Array이므로 멤버를 추가하거나 삭제할 수 없습니다
//immutableArray.append(4)
//immutableArray.removeAll()

```

## **Dictionary**

Dictionary는 `키`와 `값`의 쌍으로 이루어진 컬렉션 타입입니다.

> Dictionary의 선언과 생성Dictionary는 여러 리터럴 문법을 활용할 수 있어서 표현 방법이 다양합니다
> 

![https://yagomdotnet-bucket.s3.ap-northeast-2.amazonaws.com/wp-content/uploads/2020/02/09041043/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA-2021-08-09-%E1%84%8B%E1%85%A9%E1%84%8C%E1%85%A5%E1%86%AB-4.09.37.png](https://yagomdotnet-bucket.s3.ap-northeast-2.amazonaws.com/wp-content/uploads/2020/02/09041043/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA-2021-08-09-%E1%84%8B%E1%85%A9%E1%84%8C%E1%85%A5%E1%86%AB-4.09.37.png)

> Dictionary 활용
> 

```
// 키에 해당하는 값 할당
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

print(anyDictionary) // ["someKey": "value", "anotherKey": 100]

// 키에 해당하는 값 변경
anyDictionary["someKey"] = "dictionary"
print(anyDictionary) // ["someKey": "dictionary", "anotherKey": 100]

// 키에 해당하는 값 제거
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil
print(anyDictionary)

```

> let을 사용하여 Dictionary를 선언하면 불변 Dictionary가 됩니다
> 

```
let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "yagom", "gender": "male"]

// 불변 Dictionary이므로 값 변경 불가
//emptyDictionary["key"] = "value"

```

> 키에 해당하는 값을 다른 변수나 상수에 할당하고자 할 때는 옵셔널과 타입 캐스팅 파트에서 다룹니다
> 

```
// "name"이라는 키에 해당하는 값이 없을 수 있으므로
// String 타입의 값이 나올 것이라는 보장이 없습니다.
// 컴파일 오류가 발생합니다
let someValue: String = initalizedDictionary["name"]

```

## **Set**

Set는 순서가 없고, 멤버가 유일한 것을 보장하는 컬렉션 타입입니다.

> Set의 선언과 생성
> 

![https://yagomdotnet-bucket.s3.ap-northeast-2.amazonaws.com/wp-content/uploads/2020/02/09041049/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA-2021-08-09-%E1%84%8B%E1%85%A9%E1%84%8C%E1%85%A5%E1%86%AB-4.09.45.png](https://yagomdotnet-bucket.s3.ap-northeast-2.amazonaws.com/wp-content/uploads/2020/02/09041049/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA-2021-08-09-%E1%84%8B%E1%85%A9%E1%84%8C%E1%85%A5%E1%86%AB-4.09.45.png)

> Set는 집합연산에 많이 활용됩니다
> 

![https://yagomdotnet-bucket.s3.ap-northeast-2.amazonaws.com/wp-content/uploads/2020/02/09041057/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA-2021-08-09-%E1%84%8B%E1%85%A9%E1%84%8C%E1%85%A5%E1%86%AB-4.09.59.png](https://yagomdotnet-bucket.s3.ap-northeast-2.amazonaws.com/wp-content/uploads/2020/02/09041057/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA-2021-08-09-%E1%84%8B%E1%85%A9%E1%84%8C%E1%85%A5%E1%86%AB-4.09.59.png)

## **생각해보기**

다음과 같은 경우에는 각각 어떤 컬렉션 타입을, 상수/변수 선언 중 어떤 것을 사용하면 유용할지 생각해 봅시다.

- 영어 알파벳 소문자를 모아두는 컬렉션 < 순서 인덱스가 중요하면 배열> 상관없이 고유한 문자만 컬렉션에 소유하고 싶다면 set
- 책의 제목과 저자 정리를 위한 컬렉션
- 우리반 학생 명부 작성을 위한 컬렉션

## **관련문서**

- [The Swift Programming Language – Collection Types](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html)

---

## **함수의 선언**

### **함수선언의 기본형태**

```
func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    /* 함수 구현부 */
    return 반환값
}
// 예)
// sum이라는 이름을 가지고
// a와 b라는 Int 타입의 매개변수를 가지며
// Int 타입의 값을 반환하는 함수
func sum(a: Int, b: Int) -> Int {
    return a + b
}

```

### **반환 값이 없는 함수**

```
func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> Void {
    /* 함수 구현부 */
    return
}
// 예)
func printMyName(name: String) -> Void {
    print(name)
}
// 반환 값이 없는 경우, 반환 타입(Void)을 생략해 줄 수 있습니다
func printYourName(name: String) {
    print(name)
}

```

### **매개변수가 없는 함수**

```
func 함수이름() -> 반환타입 {
    /* 함수 구현부 */
    return 반환값
}
// 예)
func maximumIntegerValue() -> Int {
    return Int.max
}
```

### **매개변수와 반환값이 없는 함수**

```
func 함수이름() -> Void {
    /* 함수 구현부 */
    return
}
// 함수 구현이 짧은 경우
// 가독성을 해치지 않는 범위에서
// 줄바꿈을 하지 않고 한 줄에 표현해도 무관합니다
func hello() -> Void { print("hello") }
// 반환 값이 없는 경우, 반환 타입(Void)을 생략해 줄 수 있습니다
func 함수이름() {
    /* 함수 구현부 */
    return
}
func bye() { print("bye") }
```

## **함수의 호출**

```
sum(a: 3, b: 5) // 8
printMyName(name: "yagom") // yagom
printYourName(name: "hana") // hana
maximumIntegerValue() // Int의 최댓값
hello() // hello
bye() // bye
```

## **관련문서**

- [The Swift Programming Language – Functions](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html)

---

## **매개변수 기본 값**

매개변수에 기본적으로 전달될 값을 미리 지정할 수 있습니다

> 기본값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋습니다
> 

```swift
func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
    /* 함수 구현부 */
    return 반환값
}

func greeting(friend: String, me: String = "yagom") {
    print("Hello \(friend)! I'm \(me)")
}

// 매개변수 기본값을 가지는 매개변수는 호출시 생략할 수 있습니다
greeting(friend: "hana") // Hello hana! I'm yagom
greeting(friend: "john", me: "eric") // Hello john! I'm eric

```

## **전달인자 레이블**

> 함수를 호출할 때 함수 사용자의 입장에서 매개변수의 역할을 좀 더 명확하게 표현하고자 할 때 사용합니다
> 

```swift
func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    /* 함수 구현부 */
    return
}

// 함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용합니다
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

// 함수를 호출할 때에는 전달인자 레이블을 사용해야 합니다
greeting(to: "hana", from: "yagom") // Hello hana! I'm yagom

```

## **가변 매개변수**

전달 받을 값의 개수를 알기 어려울 때 사용할 수 있습니다

> 스위프트 버전 5.4 미만에서는 함수당 하나의 가변 매개변수만 가질 수 있습니다(5.4 버전부터 여러개 가능) 현재는 5.6버전이라 가능합니다~~~ 히히히
> 

```swift
func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입 {
    /* 함수 구현부 */
    return
}

func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}
print(sayHelloToFriends(me: "yagom", friends: "hana", "eric", "wing"))
// Hello ["hana", "eric", "wing"]! I'm yagom!

print(sayHelloToFriends(me: "yagom"))
// Hello []! I'm yagom!

```

> 위에 설명한 함수의 다양한 모양은 모두 섞어서 사용 가능합니다
> 

## **데이터 타입으로서의 함수**

스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어이므로 스위프트의 함수는 일급객체입니다. 그래서 함수를 변수, 상수 등에 할당이 가능하고 매개변수를 통해 전달할 수도 있습니다

### **함수의 타입표현**

반환타입을 생략할 수 없습니다.

```swift
 (매개변수1타입, 매개변수2타입 ...) -> 반환타입

```

### **함수타입 사용**

```swift
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "yagom") // Hello eric! I'm yagom

someFunction = greeting(friend:me:)
someFunction("eric", "yagom") // Hello eric! I'm yagom

// 타입이 다른 함수는 할당할 수 없습니다 - 컴파일 오류 발생
//someFunction = sayHelloToFriends(me: friends:)
//someFunction 은 Void 반환타입이 없는 하는 함수고 
//sayHelloToFriends는 String을 반환하는 함수. 그래서 어사인 안됨.

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

// Hello jenny! I'm mike
runAnother(function: greeting(friend:me:))

// Hello jenny! I'm mike
runAnother(function: someFunction)

```

> 참고 : 스위프트의 전반적인 문법에서 띄어쓰기는 신경써야할 때가 많습니다
> 

## **관련문서**

- [The Swift Programming Language – Functions](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html)

## **if-else 구문**

### **if-else 구문의 기본 형태**

if만 단독적으로 사용해도 되고, else if, else와 조합해서 사용 가능합니다.if 뒤의 조건 값에는 Bool 타입의 값만 위치해야 하며, 조건 값을 감싸는 소괄호는 선택사항입니다.

```swift
if 조건 {
    /* 실행 구문 */
} else if 조건 {
    /* 실행 구문 */
} else {
    /* 실행 구문 */
}
```

### **if-else의 사용**

```swift
let someInteger = 100

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
} // 100

// 스위프트의 조건에는 항상 Bool 타입이 들어와야합니다
// someInteger는 Bool 타입이 아닌 Int 타입이기 때문에
// 컴파일 오류가 발생합니다
//if someInteger { }
```

## **switch 구문**

스위프트의 switch 구문은 다른 언어에 비해 굉장히 강력한 힘을 발휘합니다. 기본적으로 사용하던 정수타입의 값만 비교하는 것이 아니라 대부분의 스위프트 기본 타입을 지원하며, 다양한 패턴과도 응용이 가능합니다. 스위프트의 다양한 패턴은 [Swift Programming Language Reference의 패턴](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Patterns.html#//apple_ref/doc/uid/TP40014097-CH36-ID419)에서 확인할 수 있습니다.

> 각각의 case 내부에는 실행가능한 코드가 반드시 위치해야 합니다매우 한정적인 값(ex. enum의 case 등)이 비교값이 아닌 한 default 구문은 반드시 작성해야 합니다명시적 break를 하지 않아도 자동으로 case마다 break 됩니다 fallthrough 키워드를 사용하여 break를 무시할 수 있습니다쉼표(,)를 사용하여 하나의 case에 여러 패턴을 명시할 수 있습니다
> 

### **switch 구문의 기본 형태**

```swift
switch 비교값 {
case 패턴:
    /* 실행 구문 */
default:
    /* 실행 구문 */
}
```

### **switch 구문의 사용**

```swift
// 범위 연산자를 활용하면 더욱 쉽고 유용합니다 ( ex 1..<100 , 101...)
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
} // 100

// 정수 외의 대부분의 기본 타입을 사용할 수 있습니다
// 명시적으로 break를 적지 않아도 걸림 만약에 걸리지 않고 넘길려면은 fallthrough를 통해 다음 조건에 넘길수 있음.
switch "yagom" {
case "jake":
    print("jake")
	  fallthrough
case "mina":
    print("mina")
case "yagom":
    print("yagom!!")
default:
    print("unknown")
} // yagom!!

```

> 기본 문법을 익힌 뒤 차후에 더 많은 switch 구문과 패턴의 활용에 대해 알아봅시다
> 

## **관련문서**

- [The Swift Programming Language – Control Flow](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html)

---

## **for-in 구문**

> 기존 언어의 for-each 구문과 유사합니다. Dictionary의 경우 이터레이션 아이템으로 튜플이 들어옵니다. 튜플에 관해서는 [Swift Language Guide의 Tuples 부분](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html)을 참고하면 되겠습니다.
> 

### **for-in 구문의 기본 형태**

```swift
for item in items {
    /* 실행 구문 */
}
```

### **for-in 구문의 사용**

```swift
var integers = [1, 2, 3]
let people = ["yagom": 10, "eric": 15, "mike": 12]

for integer in integers {
    print(integer)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입입니다
for (name, age) in people {
    print("\(name): \(age)")
}
```

## **while 구문**

### **while 구문의 기본 형태**

```swift
while 조건 {
    /* 실행 구문 */
}
```

### **while 구문의 사용**

```swift
while integers.count > 1 {
    integers.removeLast()
}
```

## **repeat-while 구문**

기존 언어의 do-while 구문과 형태 및 동작이 유사합니다

### **repeat-while 구문의 기본 형태**

```swift
repeat {
    /* 실행 구문 */
} while 조건
```

### **repeat-while 구문의 사용**

```swift
repeat {
    integers.removeLast()
} while integers.count > 0

// 타언어에서 do while 구문과 같음.
```

## **관련문서**

- [The Swift Programming Language – Control Flow](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html)

---
## 구조체 **정의 문법**

스위프트 대부분의 타입은 구조체로 이루어져 있습니다. 구조체는 값 타입입니다. 타입이름은 대문자 카멜케이스를 사용하여 정의합니다.

```
struct 이름(Person) {
    /* 구현부 */
}
```

### **프로퍼티 및 메서드 구현**

```swift
struct Sample {
    // 가변 프로퍼티 ( 말그대로 가변이 가능함)
    var mutableProperty: Int = 100

    // 불변 프로퍼티 ( 말그래도 불변 인스턴스 생성후 값을 변경 불가)
    let immutableProperty: Int = 100

    // 타입 프로퍼티
    static var typeProperty: Int = 100

    // 인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }

    // 타입 메서드
    static func typeMethod() {
        print("type method")
    }
}

```

### **구조체 사용**

```swift
// 가변 인스턴스 생성
var mutable: Sample = Sample()

mutable.mutableProperty = 200

// 불변 프로퍼티는 인스턴스 생성 후 수정할 수 없습니다
// 컴파일 오류 발생
//mutable.immutableProperty = 200

// 불변 인스턴스
let immutable: Sample = Sample()

// 불변 인스턴스는 아무리 가변 프로퍼티라도
// 인스턴스 생성 후에 수정할 수 없습니다
// 컴파일 오류 발생
//immutable.mutableProperty = 200
//immutable.immutableProperty = 200

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method

// 인스턴스에서는 타입 프로퍼티나 타입 메서드를
// 사용할 수 없습니다
// 컴파일 오류 발생
//mutable.typeProperty = 400
//mutable.typeMethod()
```

## **학생 구조체 만들어보기**

```swift
struct Student {
    // 가변 프로퍼티
    var name: String = "unknown"

    // 키워드도 `로 묶어주면 이름으로 사용할 수 있습니다
    var `class`: String = "Swift"

    // 타입 메서드
    static func selfIntroduce() {
        print("학생타입입니다")
    }

    // 인스턴스 메서드
    // self는 인스턴스 자신을 지칭하며, 몇몇 경우를 제외하고 사용은 선택사항입니다
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

// 타입 메서드 사용
Student.selfIntroduce() // 학생타입입니다

// 가변 인스턴스 생성
var yagom: Student = Student()
yagom.name = "yagom"
yagom.class = "스위프트"
yagom.selfIntroduce()   // 저는 스위프트반 yagom입니다

// 불변 인스턴스 생성
let jina: Student = Student()

// 불변 인스턴스이므로 프로퍼티 값 변경 불가
// 컴파일 오류 발생
//jina.name = "jina"
jina.selfIntroduce() // 저는 Swift반 unknown입니다

```

## **관련문서**

- [The Swift Programming Language – Classes and Structures](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html)

---

## Class**정의 문법**

클래스는 참조 타입입니다. 타입이름은 대문자 카멜케이스를 사용하여 정의합니다.

```swift
class 이름 {
    /* 구현부 */
}
```

### **프로퍼티 및 메서드 구현**

클래스의 타입 메서드는 두 종류가 있습니다. 상속 후 재정의가 가능한 class 타입메서드, 상속 후 재정의가 불가능한 static 타입메서드가 있습니다. 자세한 내용은 상속 부분에서 다시 다룹니다.

class , static 둘다 타입 메소드로 메모리에 할당하지않아도 정적 메소드로 사용가능 하다 그리고 차이점으로는 class는 상속시 재정의가능(오버라이드) , static은 당연 불가

```swift
class Sample {
    // 가변 프로퍼티
    var mutableProperty: Int = 100

    // 불변 프로퍼티
    let immutableProperty: Int = 100

    // 타입 프로퍼티
    static var typeProperty: Int = 100

    // 인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }

    // 타입 메서드
    // 재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }

    // 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
}

```

### **클래스 사용**

```swift
// 인스턴스 생성 - 참조정보 수정 가능
var mutableReference: Sample = Sample()

mutableReference.mutableProperty = 200

// 불변 프로퍼티는 인스턴스 생성 후 수정할 수 없습니다
// 컴파일 오류 발생
//mutableReference.immutableProperty = 200

// 인스턴스 생성 - 참조정보 수정 불가
let immutableReference: Sample = Sample()

// 클래스의 인스턴스는 참조 타입이므로 let으로 선언되었더라도 인스턴스 프로퍼티의 값 변경이 가능합니다
immutableReference.mutableProperty = 200

// 다만 참조정보를 변경할 수는 없습니다
// 컴파일 오류 발생
//immutableReference = mutableReference (x)

// 참조 타입이라도 불변 인스턴스는
// 인스턴스 생성 후에 수정할 수 없습니다
// 컴파일 오류 발생
//immutableReference.immutableProperty = 200

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method

// 인스턴스에서는 타입 프로퍼티나 타입 메서드를
// 사용할 수 없습니다
// 컴파일 오류 발생
//mutableReference.typeProperty = 400
//mutableReference.typeMethod()

```

## **학생 클래스 만들어보기**

```swift
class Student {
    // 가변 프로퍼티
    var name: String = "unknown"

    // 키워드도 `로 묶어주면 이름으로 사용할 수 있습니다
    var `class`: String = "Swift"

    // 타입 메서드
    class func selfIntroduce() {
        print("학생타입입니다")
    }

    // 인스턴스 메서드
    // self는 인스턴스 자신을 지칭하며, 몇몇 경우를 제외하고 사용은 선택사항입니다
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

// 타입 메서드 사용
Student.selfIntroduce() // 학생타입입니다

// 인스턴스 생성
var yagom: Student = Student()
yagom.name = "yagom"
yagom.class = "스위프트"
yagom.selfIntroduce()   // 저는 스위프트반 yagom입니다

// 인스턴스 생성
let jina: Student = Student()
jina.name = "jina"
jina.selfIntroduce() // 저는 Swift반 jina입니다

```

## **관련문서**

- [The Swift Programming Language – Classes and Structures](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html)

---

## Enum **정의 문법**

스위프트의 열거형은 다른 언어의 열거형과는 많이 다릅니다. 잘 살펴보아야 할 스위프트의 기능 중 하나입니다.

- enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의합니다
- 각 case는 소문자 카멜케이스로 정의합니다
- 각 case는 그 자체가 고유의 값입니다
- 각 케이스는 한 줄에 개별로도, 한 줄에 여러개도 정의할 수 있습니다

```swift
enum 이름 {
    case 이름1
    case 이름2
    case 이름3, 이름4, 이름5
    // ...
}

```

### **열거형 사용**

```swift
enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

// 열거형 타입과 케이스를 모두 사용하여도 됩니다
var day: Weekday = Weekday.mon

// 타입이 명확하다면 .케이스 처럼 표현해도 무방합니다
day = .tue

print(day) // tue

// switch의 비교값에 열거형 타입이 위치할 때
// 모든 열거형 케이스를 포함한다면
// default를 작성할 필요가 없습니다
switch day {
case .mon, .tue, .wed, .thu:
    print("평일입니다")
case Weekday.fri:
    print("불금 파티!!")
case .sat, .sun:
    print("신나는 주말!!")
}
// 평일입니다

```

## **원시값**

C 언어의 enum처럼 정수값을 가질 수도 있습니다. rawValue를 사용하면 됩니다.`case별로 각각 다른 값을 가져야합니다`

```swift
enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach

    // mango와 apple의 원시값이 같으므로
    // mango 케이스의 원시값을 0으로 정의할 수 없습니다
//    case mango = 0
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")
// Fruit.peach.rawValue == 2

```

정수 타입 뿐만 아니라 `Hashable` 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있습니다.

```swift
enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

print("School.middle.rawValue == \(School.middle.rawValue)")
// School.middle.rawValue == 중등

// 열거형의 원시값 타입이 String일 때, 원시값이 지정되지 않았다면
// case의 이름을 원시값으로 사용합니다
print("School.university.rawValue == \(School.university.rawValue)")
// School.university.rawValue == university

```

### **원시값(rowValue)을 통한 초기화**

rawValue를 통해 초기화 할 수 있습니다. rawValue가 case에 해당하지 않을 수 있으므로 rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입입니다.

```
// rawValue를 통해 초기화 한 열거형 값은 옵셔널 타입이므로 Fruit 타입이 아닙니다
//let apple: Fruit = Fruit(rawValue: 0)
let apple: Fruit? = Fruit(rawValue: 0)

// if let 구문을 사용하면 rawValue에 해당하는 케이스를 곧바로 사용할 수 있습니다
if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다")
} // rawValue 5에 해당하는 케이스가 없습니다

```

## **메서드**

스위프트의 열거형에는 메서드도 추가할 수 있습니다.

```swift
enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov

    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("따스한 봄~")
        case .jun, .jul, .aug:
            print("여름 더워요~")
        case .sep, .oct, .nov:
            print("가을은 독서의 계절!")
        case .dec, .jan, .feb:
            print("추운 겨울입니다")
        }
    }
}

Month.mar.printMessage()
// 따스한 봄~

```

## **관련문서**

- [The Swift Programming Language – Enumerations](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html)

---

## 열거형과 구조체는 값 타입(Value type)이며, 클래스는 참조 타입(Reference type)이라는 것이 가장 큰 차이입니다. 또한, 클래스는 상속이 가능하지만 구조체와 열거형은 상속이 불가능합니다.

- value
    
    데이터를 전달할때 값을 복사 하여 전달 ( 새로운 별도의 인스턴스가 하나더 생긴다고 생각하면된다 복사!!!!)
    
- Reference
    
    데이터를 전달할때 값의 메모리 위치를 전달 ( 처음 생성한 인스턴스의 값이 두번쨰 생성한 인스턴스에게 영향을 받는다. 왜??? 메모리 주소값을 통한 전달 이기에 프로퍼티값이 영향을 받지) 아래 와 같은 예시로 파악해보자!!!
    

```swift
struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

// 첫 번째 구조체 인스턴스
let firstStructInstance = ValueType()
// 두 번째 구조체 인스턴스에 첫 번째 인스턴스 값 복사
var secondStructInstance = firstStructInstance
// 두 번째 구조체 인스턴스 프로퍼티 값 수정
secondStructInstance.property = 2

// 두 번째 구조체 인스턴스는 첫 번째 구조체를 똑같이 복사한
// 별도의 인스턴스이기 때문에
// 두 번째 구조체 인스턴스의 프로퍼티 값을 변경해도
// 첫 번째 구조체 인스턴스의 프로퍼티 값에는 영향이 없음
print("first struct instance property : \(firstStructInstance.property)")    // 1
print("second struct instance property : \(secondStructInstance.property)")  // 2

// 클래스 인스턴스 생성 후 첫 번째 참조 생성
let firstClassReference = ReferenceType()
// 두 번째 참조 변수에 첫 번째 참조 할당
let secondClassReference = firstClassReference
secondClassReference.property = 2

// 두 번째 클래스 참조는 첫 번째 클래스 인스턴스를 참조하기 때문에
// 두 번째 참조를 통해 인스턴스의 프로퍼티 값을 변경하면
// 첫 번째 클래스 인스턴스의 프로퍼티 값을 변경하게 됨
print("first class reference property : \(firstClassReference.property)")    // 2
print("second class reference property : \(secondClassReference.property)")  // 2
```

## **관련문서**

- [The Swift Programming Language – Enumerations](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html)
- [The Swift Programming Language – Classes and Structures](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html)

---

# **클로저**

클로저는 코드의 블럭입니다. 일급객체 [일급시민(first-citizen)](https://ko.wikipedia.org/wiki/%EC%9D%BC%EA%B8%89_%EA%B0%9D%EC%B2%B4)으로, 전달인자, 변수, 상수 등으로 저장, 전달이 가능합니다.함수는 클로저의 일종으로, `이름이 있는 클로저`라고 생각하면 됩니다.

## **기본 클로저 문법**

```swift
{ (매개변수 목록) -> 반환타입 in
    실행 코드
}
```

## **클로저의 사용**

```swift
// sum이라는 상수에 클로저를 할당
let sum: (Int, Int) -> Int = { (a: Int, b: Int) in
    return a + b
}
let sumResult: Int = sum(1, 2)
print(sumResult) // 3
```

## **함수의 전달인자로서의 클로저**

클로저는 주로 함수의 전달인자로 많이 사용됩니다. 함수 내부에서 원하는 코드블럭을 실행할 수 있습니다.

```swift
let add: (Int, Int) -> Int
add = { (a: Int, b: Int) in
    return a + b
}
let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) in
    return a - b
}
let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) in
    return a / b
}
func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}
var calculated: Int
calculated = calculate(a: 50, b: 10, method: add)
print(calculated) // 60
calculated = calculate(a: 50, b: 10, method: substract)
print(calculated) // 40
calculated = calculate(a: 50, b: 10, method: divide)
print(calculated) // 5
//따로 클로저를 상수/변수에 넣어 전달하지 않고,
//함수를 호출할 때 클로저를 작성하여 전달할 수도 있습니다.
calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})
print(calculated) // 500
```

# **다양한 클로저표현**

클로저는 다양한 모습으로 표현될 수 있습니다.함수의 매개변수 마지막으로 전달되는 클로저는 `후행클로저(trailing closure)`로 함수 밖에 구현할 수 있습니다.

컴파일러가 클로저의 타입을 유추할 수 있는 경우 매개변수, 반환 타입을 생략할 수 있습니다.

반환 값이 있는 경우, 암시적으로 클로저의 맨 마지막 줄은 `return` 키워드를 생략하더라도 반환 값으로 취급합니다.

전달인자의 이름이 굳이 필요없고, 컴파일러가 타입을 유추할 수 있는 경우 축약된 전달인자 이름(`$0`, `$1`, `$2`…)을 사용 할 수 있습니다.

클로저 매개변수를 갖는 함수 `calculate(a:b:method:)`와 결과값을 저장할 변수 `result`를 먼저 선언해둡니다.

```swift
func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var result: Int
```

## **후행 클로저**

클로저가 함수의 마지막 전달인자라면 마지막 매개변수 이름을 생략한 후 함수 소괄호 외부에 클로저를 구현할 수 있습니다.

```swift
result = calculate(a: 10, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
}

print(result) // 20
```

## **반환타입 생략**

`calculate(a:b:method:)` 함수의 `method` 매개변수는 `Int` 타입을 반환할 것이라는 사실을 컴파일러도 알기 때문에 굳이 클로저에서 반환타입을 명시해 주지 않아도 됩니다.대신 `in 키워드는 생략할 수 없습니다`

```swift
result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) in
    return left + right
})

print(result) // 20

// 후행클로저와 함께 사용할 수도 있습니다
result = calculate(a: 10, b: 10) { (left: Int, right: Int) in
    return left + right
}

print(result) // 20
```

## **단축 인자이름**

클로저의 매개변수 이름이 굳이 불필요하다면 단축 인자이름을 활용할 수 있습니다. 단축 인자이름은 클로저의 매개변수의 순서대로 `$0`, `$1`, `$2`… 처럼 표현합니다.

```swift
result = calculate(a: 10, b: 10, method: {
    return $0 + $1
})

print(result) // 20

// 당연히 후행 클로저와 함께 사용할 수 있습니다
result = calculate(a: 10, b: 10) {
    return $0 + $1
}

print(result) // 20
```

## **암시적 반환 표현**

클로저가 반환하는 값이 있다면 클로저의 마지막 줄의 결과값은 암시적으로 반환값으로 취급합니다.

```swift
result = calculate(a: 10, b: 10) {
    $0 + $1
}

print(result) // 20

// 간결하게 한 줄로 표현해 줄 수도 있습니다
result = calculate(a: 10, b: 10) { $0 + $1 }

print(result) // 20
```

## **축약 전과 후 비교**

```swift
//축약 전
result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) -> Int in
    return left + right
})

//축약 후
result = calculate(a: 10, b: 10) { $0 + $1 }

print(result) // 20
```

## **관련문서**

- [The Swift Programming Language – Closures](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html)
- [일급시민(first-citizen)](https://ko.wikipedia.org/wiki/%EC%9D%BC%EA%B8%89_%EA%B0%9D%EC%B2%B4)


---

# **프로퍼티**

프로퍼티는 클래스, 구조체, 열거형과 연관된 값입니다. 타입과 관련된 값을 저장할 수도, 연산할 수도 있습니다.

### **프로퍼티의 종류**

- 인스턴스 저장 프로퍼티
- 타입 저장 프로퍼티
- 인스턴스 연산 프로퍼티
- 타입 연산 프로퍼티
- 지연 저장 프로퍼티

이번 파트에서는 지연 저장 프로퍼티를 제외한 저장 프로퍼티와 연산 프로퍼티에 대해 알아봅니다.

## **정의와 사용**

프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있습니다. 다만 열거형 내부에는 연산 프로퍼티만 구현할 수 있습니다. 연산 프로퍼티는 `var`로만 선언할 수 있습니다.연산프로퍼티를 읽기전용으로는 구현할 수 있지만, 쓰기 전용으로는 구현할 수 없습니다. 읽기전용으로 구현하려면 `get` 블럭만 작성해주면 됩니다. 읽기전용은 `get`블럭을 생략할 수 있습니다. 읽기, 쓰기 모두 가능하게 하려면 `get` 블럭과 `set`블럭을 모두 구현해주면 됩니다.`set` 블럭에서 암시적 매개변수 `newValue`를 사용할 수 있습니다.

```swift
struct Student {
    // 인스턴스 저장 프로퍼티
    var name: String = ""
    var `class`: String = "Swift"
    var koreanAge: Int = 0
    // 인스턴스 연산 프로퍼티
    var westernAge: Int {
        get {
            return koreanAge - 1
        }
        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }
    // 타입 저장 프로퍼티
    static var typeDescription: String = "학생"
    /*
    // 인스턴스 메서드
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
     */
    // 읽기전용 인스턴스 연산 프로퍼티
    // 간단히 위의 selfIntroduce() 메서드를 대체할 수 있습니다
    var selfIntroduction: String {
        get {
            return "저는 \(self.class)반 \(name)입니다"
        }
    }
    /*
     // 타입 메서드
     static func selfIntroduce() {
     print("학생타입입니다")
     }
     */
    // 읽기전용 타입 연산 프로퍼티
    // 읽기전용에서는 get을 생략할 수 있습니다
    static var selfIntroduction: String {
        return "학생타입입니다"
    }
}
// 타입 연산 프로퍼티 사용
print(Student.selfIntroduction)
// 학생타입입니다
// 인스턴스 생성
var yagom: Student = Student()
yagom.koreanAge = 10
// 인스턴스 저장 프로퍼티 사용
yagom.name = "yagom"
print(yagom.name)
// yagom
// 인스턴스 연산 프로퍼티 사용
print(yagom.selfIntroduction)
// 저는 Swift반 yagom입니다
print("제 한국나이는 \(yagom.koreanAge)살이고, 미쿡나이는 \(yagom.westernAge)살입니다.")
// 제 한국나이는 10살이고, 미쿡나이는 9살입니다.
```

## **응용**

```swift
struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}
var moneyInMyPocket = Money()
moneyInMyPocket.won = 11000
print(moneyInMyPocket.won)
// 11000.0
moneyInMyPocket.dollar = 10
print(moneyInMyPocket.won)
// 11000.0

```

## **지역변수 및 전역변수**

저장 프로퍼티와 연산 프로퍼티의 기능은 함수, 메서드, 클로저, 타입 등의 외부에 위치한 지역/전역 변수에도 모두 사용 가능합니다.

```swift
var a: Int = 100
var b: Int = 200
var sum: Int {
    return a + b
}
print(sum) // 300
```

## **관련문서**

- [The Swift Programming Language – Properties](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Properties.html)


# **프로퍼티 감시자**

프로퍼티 감시자를 사용하면 프로퍼티 값이 변경될 때 원하는 동작을 수행할 수 있습니다. 값이 변경되기 직전에 `willSet`블럭이, 값이 변경된 직후에 `didSet`블럭이 호출됩니다. 둘 중 필요한 하나만 구현해 주어도 무관합니다. 변경되려는 값이 **기존 값과 똑같더라도** 프로퍼티 감시자는 항상 동작합니다.`willSet` 블럭에서 암시적 매개변수 `newValue`를 사용할 수 있고, `didSet` 블럭에서 암시적 매개변수 `oldValue`를 사용할 수 있습니다.

프로퍼티 감시자는 연산 프로퍼티에 사용할 수 없음 

 저장 프로퍼티에 사용하는게 맞음.

아래와 같은 예시로 확인해 보자~~~

## **정의 및 사용**

```swift
struct Money {
    // 프로퍼티 감시자 사용
    var currencyRate: Double = 1100 {
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)으로 변경될 예정입니다")
        }

        didSet(oldRate) {
            print("환율이 \(oldRate)에서 \(currencyRate)으로 변경되었습니다")
        }
    }

    // 프로퍼티 감시자 사용
    var dollar: Double = 0 {
        // willSet의 암시적 매개변수 이름 newValue
        willSet {
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다")
        }

        // didSet의 암시적 매개변수 이름 oldValue
        didSet {
            print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다")
        }
    }

    // 연산 프로퍼티
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }

        /* 프로퍼티 감시자와 연산 프로퍼티 기능을 동시에 사용할 수 없습니다
        willSet {

        }
         */
    }
}

var moneyInMyPocket: Money = Money()

// 환율이 1100.0에서 1150.0으로 변경될 예정입니다
moneyInMyPocket.currencyRate = 1150
// 환율이 1100.0에서 1150.0으로 변경되었습니다

// 0.0달러에서 10.0달러로 변경될 예정입니다
moneyInMyPocket.dollar = 10
// 0.0달러에서 10.0달러로 변경되었습니다

print(moneyInMyPocket.won)
// 11500.0

```

## **관련문서**

- [The Swift Programming Language – Properties](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Properties.html)


---

# **상속**

스위프트의 상속은 클래스, 프로토콜 등에서 가능합니다. 열거형, 구조체는 상속이 불가능합니다. 스위프트는 다중상속을 지원하지 않습니다.이번 파트에서는 클래스의 상속에 대해서 알아보자

**타입 프로퍼티**는 타입 메소드와 마찬가지로 **생성자 없이 바로 접근** 가능하고, static, class 중 **class 프로퍼티만 상속**이 가능해요.

static 프로퍼티의 가장 흔한 예시는 설정(configuration)입니다. `UIKit` 에서 유일한 목적이 다른 object를 설정하기 위한 것인 이러한 프로퍼티를 볼 수 있죠.

주의해야할 점은 **class 타입 프로퍼티** 같은 경우, **연산 타입 프로퍼티**(Computed type property)로 표현이 되어야 해요.

```swift

//저장 타입 프로퍼티 형태 - 컴파일 에러
class var errorClassProperty: Int = 1
//연산 타입 프로퍼티 형태 - 컴파일 OK
class var correctClassProperty: Int {
   return 1
}
```

## **클래스의 상속과 재정의**

### **상속 문법**

```
class 이름: 상속받을 클래스 이름 {
    /* 구현부 */
}
```

```swift
// 기반 클래스 Person
class Person {
    var name: String = ""
    func selfIntroduce() {
        print("저는 \(name)입니다")
    }
    // final 키워드를 사용하여 재정의를 방지할 수 있습니다
    final func sayHello() {
        print("hello")
    }
    // 타입 메서드
    // 재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    // 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
    // 재정의 가능한 class 메서드라도
    // final 키워드를 사용하면 재정의 할 수 없습니다
    // 메서드 앞의 `static`과 `final class`는 똑같은 역할을 합니다
    final class func finalCalssMethod() {
        print("type method - final class")
    }
}
// Person을 상속받는 Student
class Student: Person {
    var major: String = ""
    override func selfIntroduce() {
        print("저는 \(name)이고, 전공은 \(major)입니다")
    }
    override class func classMethod() {
        print("overriden type method - class")
    }
    // static을 사용한 타입 메서드는 재정의 할 수 없습니다
//    override static func typeMethod() {    }
    // final 키워드를 사용한 메서드, 프로퍼티는 재정의 할 수 없습니다
//    override func sayHello() {    }
//   override class func finalClassMethod() {    }
}

```

## **동작 확인**

```swift
let me: Person = Person()
let minji: Student = Student()
yagom.name = "jihoKim"
minji.name = "hana"
minji.major = "Swift"
me.selfIntroduce()
// 저는 jihoKim입니다
minji.selfIntroduce()
// 저는 minji이고, 전공은 Swift입니다
Person.classMethod()
// type method - class
Person.typeMethod()
// type method - static
Person.finalCalssMethod()
// type method - final class
Student.classMethod()
// overriden type method - class
Student.typeMethod()
// type method - static
Student.finalCalssMethod()
// type method - final class
```

# 잠깐만!!!

## **static 이란 무엇인가?**

- **stati**c은 변수나 메소드에 키워드로 사**용된다.**
- static 키워드를 사용한 변수는 클래스가 메모리에 올라갈 때 자동으로 생성이 된다. 즉, 인스턴스(객체) 생성 없이 바로 사용가능 하다.

그러므로, 객체를 생성하지 않아도 되니까 편리하고 속도도 빠르다.

**static 키워드를 사용하는 이유는?**

- **자주 변하지 않는 일정한 값이나 설정 정보**같은 공용자원에 대한 접근에 있어서 매번 메모리에 로딩하거나 값을 읽어들이는 것보다 일종의 '전역변수'와 같은 개념을 통해서 접근하는 것이 비용도 줄이고 효율을 높일 수있다.
- 인스턴스 생성 없이 바로 사용가능 하기 때문에 **프로그램 내에서 공통으로 사용되는 데이터들을 관리 할 때 이용**한다.

---
# **인스턴스의 생성과 소멸**

인스턴스를 생성하는 이니셜라이저와 클래스의 인스턴스가 소멸될 때 호출되는 디이니셜라이저 그리고 그와 관련된 것들에 대해 알아봅니다.

- 프로퍼티 초기값
- 이니셜라이저 `init`
- 디이니셜라이저 `deinit`

## **프로퍼티 기본값**

스위프트의 모든 인스턴스는 초기화와 동시에 **모든 프로퍼티에** 유효한 값이 할당되어 있어야 합니다. 프로퍼티에 미리 기본값을 할당해두면 인스턴스가 생성됨과 동시에 초기값을 지니게 됩니다.

```swift
class PersonA {
    // 모든 저장 프로퍼티에 기본값 할당
    var name: String = "unknown"
    var age: Int = 0
    var nickName: String = "nick"
}
// 인스턴스 생성
let jason: PersonA = PersonA()
// 기본값이 인스턴스가 지녀야 할 값과 맞지 않다면
// 생성된 인스턴스의 프로퍼티에 각각 값 할당
jason.name = "jason"
jason.age = 30
jason.nickName = "j"
```

## **이니셜라이저**

프로퍼티 기본값을 지정하기 어려운 경우에는 이니셜라이저 `init`을 통해 인스턴스가 가져야 할 초기값을 전달할 수 있습니다.

```swift
class PersonB {
    var name: String
    var age: Int
    var nickName: String
    // 이니셜라이저
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}
let hana: PersonB = PersonB(name: "hana", age: 20, nickName: "하나")
```

> 프로퍼티의 초기값이 꼭 필요 없을 때
> 

아래 두가지 방법으로 표현해보자~ 옵셔널을 사용 하거나 암시적 추출 옵셔널을통해~!~!!~

- 옵셔널을 사용!

```swift
class PersonC {
    var name: String
    var age: Int
    var nickName: String?
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
let jenny: PersonC = PersonC(name: "jenny", age: 10)
let mike: PersonC = PersonC(name: "mike", age: 15, nickName: "m")
```

- 암시적 추출 옵셔널은 인스턴스 사용에 꼭 필요하지만 초기값을 할당하지 않고자 할 때 사용

```swift
class Puppy {
    var name: String
    var owner: PersonC!
    init(name: String) {
        self.name = name
    }
    func goOut() {
        print("\(name)가 주인 \(owner.name)와 산책을 합니다")
    }
}
let happy: Puppy = Puppy(name: "happy")
// 강아지는 주인없이 산책하면 안돼요!
//happy.goOut() // 주인이 없는 상태라 오류 발생
happy.owner = jenny
happy.goOut()
// happy가 주인 jenny와 산책을 합니다
```

### **실패가능한 이니셜라이저**

이니셜라이저 매개변수로 전달되는 **초기값이 잘못된 경우 인스턴스 생성에 실패할 수 있습니다**. 인스턴스 생성에 실패하면 nil을 반환합니다. 그래서 실패가능한 이니셜라이저의 반환타입은 옵셔널 타입입니다. `init?`을 사용합니다.

```swift
class PersonD {
    var name: String
    var age: Int
    var nickName: String?
    init?(name: String, age: Int) {
        if (0...120).contains(age) == false {
            return nil
        }
        if name.characters.count == 0 {
            return nil
        }
        self.name = name
        self.age = age
    }
}
//let john: PersonD = PersonD(name: "john", age: 23)
let john: PersonD? = PersonD(name: "john", age: 23)
let joker: PersonD? = PersonD(name: "joker", age: 123)
let batman: PersonD? = PersonD(name: "", age: 10)
print(joker) // nil
print(batman) // nil
```

## **디이니셜라이저**

`deinit`은 클래스의 인스턴스가 메모리에서 해제되는 시점에 호출됩니다. 인스턴스가 해제되는 시점에 해야할 일을 구현할 수 있습니다. 자동으로 호출되므로 직접 호출할 수 없습니다. 인스턴스가 메모리에서 해제되는 시점은 **ARC(Automatic Reference Counting)** 의 규칙에 따라 결정됩니다. ARC에 대해 더 자세한 사항은 [ARC 문서](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html)를 참고하세요.디이니셜라이저는 **클래스 타입에만** 구현할 수 있습니다.

이것도 참고 해보면서 공부해보자~~!@!@

[iOS) 타 언어의 GC와 Swift ARC의 차이](https://sihyungyou.github.io/iOS-GC-vs-ARC/)

```swift
class PersonE {
    var name: String
    var pet: Puppy?
    var child: PersonC
    init(name: String, child: PersonC) {
        self.name = name
        self.child = child
    }
    // 인스턴스가 메모리에서 해제되는 시점에 자동 호출
    deinit {
        if let petName = pet?.name {
            print("\(name)가 \(child.name)에게 \(petName)를 인도합니다")
            self.pet?.owner = child
        }
    }
}
var donald: PersonE? = PersonE(name: "donald", child: jenny)
donald?.pet = happy
donald = nil // donald 인스턴스가 더이상 필요없으므로 메모리에서 해제됩니다
// donald가 jenny에게 happy를 인도합니다
```

## **관련문서**

- [The Swift Programming Language – Initialization](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Initialization.html)
- [The Swift Programming Language – Deinitialization](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Deinitialization.html)
- [The Swift Programming Language – Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html)


---

# **옵셔널 체이닝**

옵셔널 체이닝은 옵셔널의 내부의 내부의 내부로 옵셔널이 연결되어 있을 때 유용하게 활용할 수 있습니다. 매 번 nil 확인을 하지 않고 최종적으로 원하는 값이 있는지 없는지 확인할 수 있습니다.

**옵셔널 체이닝은 말그대로 옵셔널 체크를 체이닝 형태로 하는것을 말함!**

**코드를 보면서 확인해보자 ~** 

## **예제 클래스**

```swift
class Person {
    var name: String
    var job: String?
    var home: Apartment?
    init(name: String) {
        self.name = name
    }
}
class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}
```

## **옵셔널 체이닝 사용**

```swift
let yagom: Person? = Person(name: "yagom")
let apart: Apartment? = Apartment(dong: "101", ho: "202")
let superman: Person? = Person(name: "superman")
// 옵셔널 체이닝이 실행 후 결과값이 nil일 수 있으므로
// 결과 타입도 옵셔널입니다
// 만약 우리집의 경비원의 직업이 궁금하다면..?
// 옵셔널 체이닝을 사용하지 않는다면...
func guardJob(owner: Person?) {
    if let owner = owner {
        if let home = owner.home {
            if let `guard` = home.guard {
                if let guardJob = `guard`.job {
                    print("우리집 경비원의 직업은 \(guardJob)입니다")
                } else {
                    print("우리집 경비원은 직업이 없어요")
                }
            }
        }
    }
}
guardJob(owner: yagom)
// 옵셔널 체이닝을 사용한다면
func guardJobWithOptionalChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job {
        print("우리집 경비원의 직업은 \(guardJob)입니다")
    } else {
        print("우리집 경비원은 직업이 없어요")
    }
}
guardJobWithOptionalChaining(owner: yagom)
// 우리집 경비원은 직업이 없어요
yagom?.home?.guard?.job // nil
yagom?.home = apart
yagom?.home // Optional(Apartment)
yagom?.home?.guard // nil
yagom?.home?.guard = superman
yagom?.home?.guard // Optional(Person)
yagom?.home?.guard?.name // superman
yagom?.home?.guard?.job // nil
yagom?.home?.guard?.job = "경비원"

```

---

# **nil 병합 연산자**

중위 연산자입니다. `??`

`Optional ?? Value`

옵셔널 값이 `nil`일 경우, 우측의 값을 반환합니다. **띄어쓰기에 주의하여야 합니다.**

```swift
var guardJob: String
guardJob = yagom?.home?.guard?.job ?? "슈퍼맨"
print(guardJob) // 경비원
yagom?.home?.guard?.job = nil
guardJob = yagom?.home?.guard?.job ?? "슈퍼맨"
print(guardJob) // 슈퍼맨

```

## **관련문서**

- [The Swift Programming Language – Optional Chaining](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/OptionalChaining.html)
- [The Swift Programming Language – Basic Operators – Nil-Coalescing Operator](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/BasicOperators.html)

---
# **assert와 guard**

애플리케이션이 동작 도중에 생성하는 다양한 연산 결과값을 동적으로 확인하고 안전하게 처리할 수 있도록 확인하고 빠르게 처리할 수 있습니다.

## **Assertion**

`assert(*:*:file:line:)` 함수를 사용합니다. assert 함수는 **디버깅 모드에서만** 동작합니다. 배포하는 애플리케이션에서는 제외됩니다. 주로 디버깅 중 **조건의 검증을 위하여** 사용합니다.

```swift
var someInt: Int = 0
// 검증 조건에 부합하므로 지나갑니다
// 첫번쨰는 조건 파라미터 두번째 파라미터는 첫번째 조건이 부합하지 않을시 메시지
assert(someInt == 0, "someInt != 0") 

someInt = 1
//assert(someInt == 0) // 동작 중지, 검증 실패
//assert(someInt == 0, "someInt != 0") // 동작 중지, 검증 실패
// assertion failed: someInt != 0: file guard_assert.swift, line 26
func functionWithAssert(age: Int?) {
    assert(age != nil, "age == nil")
    assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다")
    print("당신의 나이는 \(age!)세입니다")
}
functionWithAssert(age: 50)
//functionWithAssert(age: -1) // 동작 중지, 검증 실패
//functionWithAssert(age: nil) // 동작 중지, 검증 실패
```

> assert(_:_:file:line:)와 같은 역할을 하지만 실제 배포 환경에서도 동작하는 precondition(_:_:file:line:) 함수도 있습니다. 함께 살펴보세요.
> 

## **빠른 종료**

Early Exit

`guard`를 사용하여 잘못된 값의 전달 시 특정 실행구문을 빠르게 종료합니다. 디버깅 모드 뿐만 아니라 어떤 조건에서도 동작합니다. `guard`의 `else` 블럭 내부에는 특정 코드블럭을 종료하는 지시어(`return`, `break` 등)가 꼭 있어야 합니다. [타입 캐스팅](https://yagom.github.io/swift_basic/contents/17_type_casting/), [옵셔널](https://yagom.github.io/swift_basic/contents/07_optional/)과도 자주 사용됩니다. 그 외에도 단순 조건 판단 후 빠르게 종료할 때도 용이합니다.

```swift
func functionWithGuard(age: Int?) {
    guard let unwrappedAge = age,
        unwrappedAge < 130,
        unwrappedAge >= 0 else {
        print("나이값 입력이 잘못되었습니다")
        return
    }
    print("당신의 나이는 \(unwrappedAge)세입니다")
}
var count = 1
while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}
// 1
// 2
func someFunction(info: [String: Any]) {
// dictionary는 키의 옵셔널 가능성이 있기에 옵셔널 바인딩과 타입 캐스팅을 통해 밸류를 추출해보자~
    guard let name = info["name"] as? String else {
        return
    }
    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }
    print("\(name): \(age)")
}
someFunction(info: ["name": "jenny", "age": "10"])
someFunction(info: ["name": "mike"])
someFunction(info: ["name": "yagom", "age": 10]) // yagom: 10
```

## **관련문서**

- [The Swift Programming Language – Control Flow – Early Exit](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html)
- [The Swift Programming Language – The Basics – Assertion](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html)

---

# **익스텐션**

*익스텐션(Extension)* 은 스위프트의 **강력한** 기능 중 하나입니다. 익스텐션은 구조체, 클래스, 열거형, 프로토콜 타입에 새로운 **기능을 추가**할 수 있는 기능입니다.

기능을 추가하려는 타입의 구현된 소스 코드를 알지 못하거나 볼 수 없다 해도, 타입만 알고 있다면 그 타입의 기능을 확장할 수도 있습니다.

- 스위프트의 익스텐션이 타입에 추가할 수 있는 기능
    - 연산 타입 프로퍼티 / 연산 인스턴스 프로퍼티
    - 타입 메서드 / 인스턴스 메서드
    - 이니셜라이저
    - 서브스크립트
    - 중첩 타입
    - 특정 프로토콜을 준수할 수 있도록 기능 추가

익스텐션은 타입에 새로운 기능을 추가할 수는 있지만, 기존에 존재하는 기능을 **재정의할 수는 없습니다.**

클래스의 상속과 익스텐션을 비교해보겠습니다. 이 둘은 비슷해보이지만 실제 성격은 많이 다릅니다.

클래스의 상속은 클래스 타입에서만 가능하지만 익스텐션은 구조체, 클래스, 프로토콜 등에 적용이 가능합니다. 또 클래스의 상속은 특정 타입을 물려받아 하나의 새로운 타입을 정의하고 추가 기능을 구현하는 수직 확장이지만, 익스텐션은 기존의 타입에 기능을 추가하는 수평 확장입니다. 또, 상속을 받으면 기존 기능을 재정의할 수 있지만, 익스텐션은 재정의할 수 없다는 것도 큰 차이 중 하나입니다. 상황과 용도에 맞게 상속과 익스텐션을 선택하여 사용하면 됩니다.

[제목 없음](https://www.notion.so/33d6afe144da415ea1664426d8005b9a)

익스텐션을 사용하는 대신 원래 타입을 정의한 소스에 기능을 추가하는 방법도 있겠지만, 외부 라이브러리나 프레임워크를 가져다 썼다면 원본 소스를 수정하지 못합니다. 이처럼 외부에서 가져온 타입에 내가 원하는 기능을 추가하고자 할 때 익스텐션을 사용합니다. 따로 상속을 받지 않아도 되며, 구조체와 열거형에도 기능을 추가할 수 있으므로 익스텐션은 매우 편리한 기능입니다.익스텐션은 모든 타입에 적용할 수 있습니다. 모든 타입이라 함은 구조체, 열거형, 클래스, 프로토콜, 제네릭 타입 등을 뜻합니다. 즉, 익스텐션을 통해 모든 타입에 연산 프로퍼티, 메서드, 이니셜라이저, 서브스크립트, 중첩 데이터 타입 등을 추가할 수 있습니다.더불어 익스텐션은 **프로토콜과 함께 사용**하면 굉장히 강력한 기능을 선사합니다. 이 부분은 **프로토콜 중심 프로그래밍(Protocol Oriented Programming)**에 대해 더 알아보면 좋습니다.

## **정의 문법**

`extension` 키워드를 사용하여 정의합니다.

```swift
extension 확장할 타입 이름 {
    /* 타입에 추가될 새로운 기능 구현 */
}
```

익스텐션은 기존에 존재하는 타입이 추가적으로 다른 프로토콜을 채택할 수 있도록 확장할 수도 있습니다. 이런 경우에는 클래스나 구조체에서 사용하던 것과 똑같은 방법으로 프로토콜 이름을 나열해줍니다.

```swift
extension 확장할 타입 이름: 프로토콜1, 프로토콜2, 프로토콜3... {
    /* 프로토콜 요구사항 구현 */
}
```

스위프트 라이브러리를 살펴보면 실제로 익스텐션이 굉장히 많이 사용되고 있음을 알 수 있습니다. `Double` 타입에는 수많은 프로퍼티와 메서드, 이니셜라이저가 정의되어 있으며 수많은 프로토콜을 채택하고 있을 것이라고 예상되지만, 실제로 `Double` 타입의 정의를 살펴보면 그 모든것이 다 정의되어 있지는 않습니다.그러면 `Double` 타입이 채택하고 준수해야 하는 수많은 프로토콜은 어디로 갔을까요? 어디에서 채택하고 어디에서 준수하도록 정의되어 있을까요? 당연히 답은 익스텐션입니다. 이처럼 스위프트 표준 라이브러리 타입의 기능은 대부분 익스텐션으로 구현되어 있습니다. `Double` 외에도 다른 타입들의 정의와 익스텐션을 찾아보면 더 많은 예를 보실 수 있습니다. 꼭 한 번 찾아보세요!

## **익스텐션 구현**

### **연산 프로퍼티 추가**

```swift
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}
print(1.isEven) // false
print(2.isEven) // true
print(1.isOdd)  // true
print(2.isOdd)  // false
var number: Int = 3
print(number.isEven) // false
print(number.isOdd) // true
number = 2
print(number.isEven) // true
print(number.isOdd) // false
```

위 코드의 익스텐션은 `Int` 타입에 두 개의 **연산 프로퍼티**를 추가한 것입니다. `Int` 타입의 인스턴스가 홀수인지 짝수인지 판별하여 `Bool` 타입으로 알려주는 연산 프로퍼티입니다. 익스텐션으로 `Int` 타입에 추가해준 연산 프로퍼티는 `Int` 타입의 어떤 인스턴스에도 사용이 가능합니다. 위의 코드처럼 인스턴스 연산 프로퍼티를 추가할 수도 있으며, `static` 키워드를 사용하여 타입 연산 프로퍼티도 추가할 수 있습니다.

### **메서드 추가**

```swift
extension Int {
    func multiply(by n: Int) -> Int {
        return self * n
    }
}
print(3.multiply(by: 2))  // 6
print(4.multiply(by: 5))  // 20
number = 3
print(number.multiply(by: 2))   // 6
print(number.multiply(by: 3))   // 9
```

위 코드의 익스텐션을 통해 `Int` 타입에 **인스턴스 메서드**인 `multiply(by:)` 메서드를 추가했습니다. 여러 기능을 여러 익스텐션 블록으로 나눠서 구현해도 전혀 문제가 없습니다. 관련된 기능별로 하나의 익스텐션 블록에 묶어주는 것도 좋습니다.

### **이니셜라이저 추가**

```swift
extension String {
    init(int: Int) {
        self = "\(int)"
    }
    init(double: Double) {
        self = "\(double)"
    }
}
let stringFromInt: String = String(int: 100)
// "100"
let stringFromDouble: String = String(double: 100.0)
// "100.0"
```

인스턴스를 초기화(이니셜라이즈)할 때 인스턴스 초기화에 필요한 다양한 데이터를 전달받을 수 있도록 여러 종류의 이니셜라이저를 만들 수 있습니다. 타입의 정의부에 이니셜라이저를 추가하지 않더라도 익스텐션을 통해 이니셜라이저를 추가할 수 있습니다.하지만 익스텐션으로 클래스 타입에 편의 이니셜라이저는 추가할 수 있지만, 지정 이니셜라이저는 추가할 수 없습니다. 지정 이니셜라이저와 디이니셜라이저는 반드시 클래스 타입의 구현부에 위치해야 합니다(값 타입은 상관없습니다).

## **관련문서**

- [The Swift Programming Language – Extensions](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Extensions.html)

---

<<<<<<< HEAD
# **고차함수**

**고차함수(Higher-order function)**은 ‘다른 함수를 전달인자로 받거나 함수실행의 결과를 함수로 반환하는 함수’를 뜻합니다.

스위프트의 함수(클로저)는 일급시민이기 때문에 함수의 전달인자로 전달할 수 있으며, 함수의 결과값으로 반환할 수 있습니다.

이번 파트에서는 스위프트 표준라이브러리에서 제공하는 유용한 고차함수에 대해 알아봅니다.

- `map`
- `filter`
- `reduce`

`map`, `filter`, `reduce` 함수는 스위프트 표준 라이브러리의 컨테이너 타입(`Array`, `Set`, `Dictionary` 등)에 구현되어 있습니다.

## map

`map`함수는 컨테이너 내부의 **기존 데이터를 변형(transform)하여 새로운 컨테이너를 생성**합니다.

> 변형하고자 하는 numbers와 변형 결과를 받을 doubledNumbers, strings
> 

```swift
let numbers: [Int] = [0, 1, 2, 3, 4]
var doubledNumbers: [Int]
var strings: [String]
```

> 기존의 for 구문 사용
> 

```swift
doubledNumbers = [Int]()
strings = [String]()

for number in numbers {
    doubledNumbers.append(number * 2)
    strings.append("\(number)")
}

print(doubledNumbers) // [0, 2, 4, 6, 8]
print(strings) // ["0", "1", "2", "3", "4"]
```

> map 메서드 사용
> 

```swift
// numbers의 각 요소를 2배하여 새로운 배열 반환
doubledNumbers = numbers.map({ (number: Int) -> Int in
    return number * 2
})

// numbers의 각 요소를 문자열로 변환하여 새로운 배열 반환
strings = numbers.map({ (number: Int) -> String in
    return "\(number)"
})

print(doubledNumbers) // [0, 2, 4, 6, 8]
print(strings) // ["0", "1", "2", "3", "4"]

// 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
doubledNumbers = numbers.map { $0 * 2 }
print(doubledNumbers) // [0, 2, 4, 6, 8]
```

## filter

`filter`함수는 컨테이너 내부의 **값을 걸러서 새로운 컨테이너로 추출**합니다.

> 기존의 for 구문 사용
> 

```swift
// 변수 사용에 주목하세요
var filtered: [Int] = [Int]()

for number in numbers {
    if number % 2 == 0 {
        filtered.append(number)
    }
}

print(filtered) // [0, 2, 4]
```

> filter 메서드 사용
> 

```swift
// numbers의 요소 중 짝수를 걸러내어 새로운 배열로 반환
let evenNumbers: [Int] = numbers.filter { (number: Int) -> Bool in
    return number % 2 == 0
}
print(evenNumbers) // [0, 2, 4]

// 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
let oddNumbers: [Int] = numbers.filter {
    $0 % 2 != 0
}
print(oddNumbers) // [1, 3]
```

## reduce

`reduce`함수는 컨테이너 내부의 **콘텐츠를 하나로 통합**합니다.

> 통합하고자 하는 someNumbers
> 

```swift
let someNumbers: [Int] = [2, 8, 15]
```

> 기존의 for 구문 사용
> 

```swift
// 변수 사용에 주목하세요
var result: Int = 0

// someNumbers의 모든 요소를 더합니다
for number in someNumbers {
    result += number
}

print(result) // 25
```

> reduce 메서드 사용
> 


```swift
// 초깃값이 0이고 someNumbers 내부의 모든 값을 더합니다.
let sum: Int = someNumbers.reduce(0, { (first: Int, second: Int) -> Int in
    //print("\(first) + \(second)") //어떻게 동작하는지 확인해보세요
    return first + second
})

print(sum)  // 25

// 초깃값이 0이고 someNumbers 내부의 모든 값을 뺍니다.
var subtract: Int = someNumbers.reduce(0, { (first: Int, second: Int) -> Int in
    //print("\(first) - \(second)") //어떻게 동작하는지 확인해보세요
    return first - second
})

print(subtract) // -25

// 초깃값이 3이고 someNumbers 내부의 모든 값을 더합니다.
let sumFromThree = someNumbers.reduce(3) { $0 + $1 }

print(sumFromThree) // 28
```

---

`reduce` 메서드에 전달하는 클로저의 매개변수 이름을 `first`, `second` 보다는 `result`, `currentItem`과 같은 이름으로 정정하는 것이 좋겠습니다. 첫 번째 매개변수는 초깃값으로부터 출발하여 마지막 요소까지 순회하는 내내의 결괏값입니다. `currentItem`은 현재 순회하고 있는 요소의 값을 뜻합니다. 결국 `return result + currentItem`이라고 표현한다면 이제까지 더해진 결괏값에 이번 요소의 값을 더한다는 뜻이 되겠습니다.

---

=======

# **오류처리**

스위프트에서 **오류(Error)**는 `Error`라는 프로토콜을 준수하는 타입의 값을 통해 표현됩니다. `Error` 프로토콜은 사실상 요구사항이 없는 빈 프로토콜일 뿐이지만, 오류를 표현하기 위한 타입(주로 열거형)은 이 프로토콜을 채택합니다.

스위프트의 열거형은 오류의 종류를 나타내기에 아주 적합한 기능입니다. 연관 값을 통해 오류에 관한 부가 정보를 제공할 수도 있습니다.

이번 예제에는 프로그램 내에서 자판기를 작동시키려고 할 때 발생하는 오류상황을 구현해 보았습니다.

## **오류표현**

`Error` 프로토콜과 (주로)열거형을 통해서 오류를 표현합니다

```
enum 오류종류이름: Error {
    case 종류1
    case 종류2
    case 종류3
    //...
}
```

> 자판기 동작 오류의 종류를 표현한 VendingMachineError 열거형
> 

```
enum VendingMachineError: Error {
    case invalidInput
    case insufficientFunds(moneyNeeded: Int)
    case outOfStock
}

```

## **함수에서 발생한 오류 던지기**

자판기 동작 도중 발생한 오류를 던지는 메서드를 구현해봅니다.오류 발생의 여지가 있는 메서드는 `throws`를 사용하여 오류를 내포하는 함수임을 표시합니다.

```
class VendingMachine {
    let itemPrice: Int = 100
    var itemCount: Int = 5
    var deposited: Int = 0
    // 돈 받기 메서드
    func receiveMoney(_ money: Int) throws {
        // 입력한 돈이 0이하면 오류를 던집니다
        guard money > 0 else {
            throw VendingMachineError.invalidInput
        }
        // 오류가 없으면 정상처리를 합니다
        self.deposited += money
        print("\(money)원 받음")
    }
    // 물건 팔기 메서드
    func vend(numberOfItems numberOfItemsToVend: Int) throws -> String {
        // 원하는 아이템의 수량이 잘못 입력되었으면 오류를 던집니다
        guard numberOfItemsToVend > 0 else {
            throw VendingMachineError.invalidInput
        }
        // 구매하려는 수량보다 미리 넣어둔 돈이 적으면 오류를 던집니다
        guard numberOfItemsToVend * itemPrice <= deposited else {
            let moneyNeeded: Int
            moneyNeeded = numberOfItemsToVend * itemPrice - deposited
            throw VendingMachineError.insufficientFunds(moneyNeeded: moneyNeeded)
        }
        // 구매하려는 수량보다 요구하는 수량이 많으면 오류를 던집니다
        guard itemCount >= numberOfItemsToVend else {
            throw VendingMachineError.outOfStock
        }
        // 오류가 없으면 정상처리를 합니다
        let totalPrice = numberOfItemsToVend * itemPrice
        self.deposited -= totalPrice
        self.itemCount -= numberOfItemsToVend
        return "\(numberOfItemsToVend)개 제공함"
    }
}
// 자판기 인스턴스
let machine: VendingMachine = VendingMachine()
// 판매 결과를 전달받을 변수
var result: String?
```

## **오류처리**

오류를 던질 수도 있지만 오류가 던져지는 것에 대비하여 던져진 오류를 처리하기 위한 코드도 작성해야 합니다. 예를 들어 던져진 오류가 무엇인지 판단하여 다시 문제를 해결한다든지, 다른 방법으로 시도해 본다든지, 사용자에게 오류를 알리고 사용자에게 선택 권한을 넘겨주어 다음에 어떤 동작을 하게 할 것인지 결정하도록 유도하는 등의 코드를 작성해야 합니다.

오류발생의 여지가 있는 `throws` 함수(메서드)는 `try`를 사용하여 호출해야합니다.`try`와 `do-catch`, `try?`와 `try!` 등에 대해 알아봅니다.

### **`do-catch`**

오류발생의 여지가 있는 `throws` 함수(메서드)는 `do-catch` 구문을 활용하여 오류발생에 대비합니다.

> 가장 정석적인 방법으로 모든 오류 케이스에 대응합니다
> 

```
do {
    try machine.receiveMoney(0)
} catch VendingMachineError.invalidInput {
    print("입력이 잘못되었습니다")
} catch VendingMachineError.insufficientFunds(let moneyNeeded) {
    print("\(moneyNeeded)원이 부족합니다")
} catch VendingMachineError.outOfStock {
    print("수량이 부족합니다")
} // 입력이 잘못되었습니다
```

> 하나의 catch 블럭에서 switch 구문을 사용하여 오류를 분류해봅니다. 굳이 위의 것과 크게 다를 것이 없습니다.
> 

```
do {
    try machine.receiveMoney(300)
} catch /*(let error)*/ {
    switch error {
    case VendingMachineError.invalidInput:
        print("입력이 잘못되었습니다")
    case VendingMachineError.insufficientFunds(let moneyNeeded):
        print("\(moneyNeeded)원이 부족합니다")
    case VendingMachineError.outOfStock:
        print("수량이 부족합니다")
    default:
        print("알수없는 오류 \(error)")
    }
} // 300원 받음
```

> 딱히 케이스별로 오류처리 할 필요가 없으면 catch 구문 내부를 간략화해도 무방합니다.
> 

```
do {
    result = try machine.vend(numberOfItems: 4)
} catch {
    print(error)
} // insufficientFunds(100)
```

> 딱히 케이스별로 오류처리 할 필요가 없으면 do 구문만 써도 무방합니다
> 

```
do {
    result = try machine.vend(numberOfItems: 4)
}
```

### **`try?` 와 `try!`**

try? 는 오류 발생시 nil  , try! 는 런타임 오류~
### **`try?`**

별도의 오류처리 결과를 통보받지 않고 오류가 발생했으면 결과값을 `nil`로 돌려받을 수 있습니다. 정상동작 후에는 옵셔널 타입으로 정상 반환값을 돌려 받습니다.

```
result = try? machine.vend(numberOfItems: 2)
result // Optional("2개 제공함")
result = try? machine.vend(numberOfItems: 2)
result // nil
```

### **`try!`**

오류가 발생하지 않을 것이라는 강력한 확신을 가질 때 `try!`를 사용하면 정상동작 후에 바로 결과값을 돌려받습니다. 오류가 발생하면 런타임 오류가 발생하여 애플리케이션 동작이 중지됩니다.

```
result = try! machine.vend(numberOfItems: 1)
result // 1개 제공함
//result = try! machine.vend(numberOfItems: 1)
// 런타임 오류 발생!
```

## **더 알아보기**

추가적으로 더 알아보면 좋은 개념입니다.

- `rethrows`
- `defer`

## **관련문서**

- [The Swift Programming Language – Error Handling](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ErrorHandling.html)
- [The Swift Programming Language – Enumerations](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html)
>>>>>>> 84e01f377013aac19c090becd025b7f86c85e031

---

# **고차함수**

**고차함수(Higher-order function)**은 ‘다른 함수를 전달인자로 받거나 함수실행의 결과를 함수로 반환하는 함수’를 뜻합니다.

스위프트의 함수(클로저)는 일급시민이기 때문에 함수의 전달인자로 전달할 수 있으며, 함수의 결과값으로 반환할 수 있습니다.

이번 파트에서는 스위프트 표준라이브러리에서 제공하는 유용한 고차함수에 대해 알아봅니다.

- `map`
- `filter`
- `reduce`

`map`, `filter`, `reduce` 함수는 스위프트 표준 라이브러리의 컨테이너 타입(`Array`, `Set`, `Dictionary` 등)에 구현되어 있습니다.

## map

`map`함수는 컨테이너 내부의 **기존 데이터를 변형(transform)하여 새로운 컨테이너를 생성**합니다.

> 변형하고자 하는 numbers와 변형 결과를 받을 doubledNumbers, strings
> 

```swift
let numbers: [Int] = [0, 1, 2, 3, 4]
var doubledNumbers: [Int]
var strings: [String]
```

> 기존의 for 구문 사용
> 

```swift
doubledNumbers = [Int]()
strings = [String]()

for number in numbers {
    doubledNumbers.append(number * 2)
    strings.append("\(number)")
}

print(doubledNumbers) // [0, 2, 4, 6, 8]
print(strings) // ["0", "1", "2", "3", "4"]
```

> map 메서드 사용
> 

```swift
// numbers의 각 요소를 2배하여 새로운 배열 반환
doubledNumbers = numbers.map({ (number: Int) -> Int in
    return number * 2
})

// numbers의 각 요소를 문자열로 변환하여 새로운 배열 반환
strings = numbers.map({ (number: Int) -> String in
    return "\(number)"
})

print(doubledNumbers) // [0, 2, 4, 6, 8]
print(strings) // ["0", "1", "2", "3", "4"]

// 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
doubledNumbers = numbers.map { $0 * 2 }
print(doubledNumbers) // [0, 2, 4, 6, 8]
```

## filter

`filter`함수는 컨테이너 내부의 **값을 걸러서 새로운 컨테이너로 추출**합니다.

> 기존의 for 구문 사용
> 

```swift
// 변수 사용에 주목하세요
var filtered: [Int] = [Int]()

for number in numbers {
    if number % 2 == 0 {
        filtered.append(number)
    }
}

print(filtered) // [0, 2, 4]
```

> filter 메서드 사용
> 

```swift
// numbers의 요소 중 짝수를 걸러내어 새로운 배열로 반환
let evenNumbers: [Int] = numbers.filter { (number: Int) -> Bool in
    return number % 2 == 0
}
print(evenNumbers) // [0, 2, 4]

// 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
let oddNumbers: [Int] = numbers.filter {
    $0 % 2 != 0
}
print(oddNumbers) // [1, 3]
```

## reduce

`reduce`함수는 컨테이너 내부의 **콘텐츠를 하나로 통합**합니다.

> 통합하고자 하는 someNumbers
> 

```swift
let someNumbers: [Int] = [2, 8, 15]
```

> 기존의 for 구문 사용
> 

```swift
// 변수 사용에 주목하세요
var result: Int = 0

// someNumbers의 모든 요소를 더합니다
for number in someNumbers {
    result += number
}

print(result) // 25
```

> reduce 메서드 사용
> 

```swift
// 초깃값이 0이고 someNumbers 내부의 모든 값을 더합니다.
let sum: Int = someNumbers.reduce(0, { (first: Int, second: Int) -> Int in
    //print("\(first) + \(second)") //어떻게 동작하는지 확인해보세요
    return first + second
})

print(sum)  // 25

// 초깃값이 0이고 someNumbers 내부의 모든 값을 뺍니다.
var subtract: Int = someNumbers.reduce(0, { (first: Int, second: Int) -> Int in
    //print("\(first) - \(second)") //어떻게 동작하는지 확인해보세요
    return first - second
})

print(subtract) // -25

// 초깃값이 3이고 someNumbers 내부의 모든 값을 더합니다.
let sumFromThree = someNumbers.reduce(3) { $0 + $1 }

print(sumFromThree) // 28
```

---

`reduce` 메서드에 전달하는 클로저의 매개변수 이름을 `first`, `second` 보다는 `result`, `currentItem`과 같은 이름으로 정정하는 것이 좋겠습니다. 첫 번째 매개변수는 초깃값으로부터 출발하여 마지막 요소까지 순회하는 내내의 결괏값입니다. `currentItem`은 현재 순회하고 있는 요소의 값을 뜻합니다. 결국 `return result + currentItem`이라고 표현한다면 이제까지 더해진 결괏값에 이번 요소의 값을 더한다는 뜻이 되겠습니다.

### **정리 간단하게 해보겠다!!**

고차함수는 다른 함수를 전달인자로 받거나 함수실행의 결과를 함수로 반환하는 함수’ 

전달이자로 일급객체인 클로져를 사용한다.@!@!@!@!@

간단하구만....!!!

Map은 기본 컨테이너 내부의 데이터를 변형 하면 새로운 컨테이너를 리턴해준다.

Filter는  함수는 컨테이너 내부의 **값 조건에 맞는 값들로  걸러서 새로운 컨테이너로 추출**합니다.

reduce는 초깃값을 기점으로 출발하여 매요소 까지 순회하여 결괏값을 리턴해준다.

compactMap , flatMap 공부해야함

## **compactMap**

/// 1차원 배열에서 nil을 제거하고 옵셔널 바인딩을 할 때

```swift
func compactMap<ElementOfResult>(_ transform: (Int?) throws -> ElementOfResult?) rethrows -> [ElementOfResult]

let optionalArray: [Int?] = [1, 2, nil, 3, 4, nil, 5, 6]
let compacted = optionalArray.compactMap { $0 }

print(optionalArray)

print(compacted)
```

## flatMap

2차원 배열을 1차원 배열로 flatten하게 만들 때

구현체

```swift
func flatMap<SegmentOfResult>(_ transform: ([Int]) throws -> SegmentOfResult) rethrows -> [SegmentOfResult.Element] where SegmentOfResult : Sequence

let twoDimensionArray: [[Int]] = [[1, 2, 3], [4, 5, 6]]

let flattened = twoDimensionArray.flatMap{ $0 }

print(twoDimensionArray) // [[1,2,3],[4,5,6]]

print(flattened) / [ 1, ,2, 3, 4,5 ,6]
```

---

## **접근제어란?**

접근제어는 코드끼리 상호작용을 할 때 파일 간 또는 모듈 간에 접근을 제한할 수 있는 기능입니다. 접근제어를 통해 코드의 상세 구현은 숨기고 허용된 기능만 사용하는 인터페이스를 제공 할 수 있습니다.

## **접근제어의 필요성**

객체지향 프로그래밍 패러다임에서 중요한 캡슐화와 은닉화를 구현하는 이유는 외부에서 보거나 접근하면 안 되는 코드가 있기 때문입니다. 불필요한 접근으로 의도치 않은 결과를 초래 하거나 꼭 필요한 부분만 제공해야하는데 전체 코드가 노출될 가능성이 있을 때 접근제어를 이용합니다.

## **모듈**

***모듈(Module)***은 배포할 코드의 묶음 단위입니다. 통상 하나의 프레임워크(Framework)나 라이브러리(Library) 또는 애플리케이션(Application)이 모듈 단위가 될 수 있습니다. 스위프트에서는 `import` 키워드를 사용해 불러옵니다.

## **소스파일**

***소스파일***은 하나의 스위프트 소스 코드 파일을 의미합니다. 자바나 Objective-C와 같은 기존 의 프로그래밍 언어에서는 통상 파일 하나에 타입을 하나만 정의합니다. 스위프트에서도 보통 파일 하나에 타입 하나만 정의하지만, 때로는 소스파일 하나에 여러 타입(여러 개의 클래스나 구조체, 열거형 등)이나 함수 등 많은 것을 정의하거나 구현할 수도 있습니다.

### 1. public - 공개 접근수준

- **어디에서든 접근 가능**
- 주로 프레임워크에서 외부와 연결될 인터페이스를 구현하는데 많이 쓰임

### 2. open - 개방 접근수준

- **public보다 높은 접근수준**
- **클래스, 클래스 멤버에서만 사용 가능**
- public과의 차이점
    1. 클래스가 정의된 **모듈 밖에서도 상속** 가능
    2. 해당 멤버가 정의된 모듈 밖의 **다른 모듈에서도 재정의** 가능
- **즉 다른 모듈에서도 부모 클래스로 사용**하겠다는 목적

### 3. internal (default) - 내부 접근수준

- 기본적으로 모든 요소에 **암묵적으로 지정되는 기본(default) 접근수준**
- **소스파일이 속해있는 모듈** 어디에서든 접근 가능
- 외부 모듈 접근 x
- 모듈 내부에서 광역적으로 사용되는 경우

### 4. fileprivate - 파일외부비공개 접근수준

- **해당 요소가 구현된 소스파일 내부에서만 사용** 가능
- 해당 소스파일 외부에서 값이 변경 혹은 함수를 호출할 경우 부작용이 예상될 때 사용

### 5. private - 비공개 접근수준

- 가장 좁은 접근 범위 가짐
- **해당 요소를 정의하고 구현한 범위 내**에서만 사용 가능
- **같은 소스파일 안에 구현한 다른 타입이나 기능에서도 사용 불가능**

### 주의 사항 및 예제.. 현업에서는 어떻게 할지~ 모르것지만 일단은 공부

모든 타입에 적용되는 접근수준의 규칙은 ‘**상위 요소보다 하위 요소가 더 높은 접근수준을 가 질 수 없다**’입니다.

비공개 접근수준으로 정의한 구조체 내부 의 프로퍼티로 내부수준이나 공개수준을 갖는 프로퍼티를 정의할 수 없습니다. 또, 함수의 매 개변수로 특정 접근수준이 부여된 타입이 전달되거나 반환된다면, 그 타입의 접근수준보다 함 수의 접근수준이 높게 설정될 수 없습니다. 아래코드를 통해 잘못된 접근수준의 예를 살펴 봅시다.

> 잘못된 접근수준 부여
> 

```swift
private class AClass {
    // 공개 접근수준을 부여해도 AClass의 접근수준이 비공개 접근수준이므로
    // 이 메서드의 접근수준도 비공개 접근수준으로 취급됩니다.
    public func someMethod() {
        // ...
    }
}
// AClass의 접근수준이 비공개 접근수준이므로
// 공개 접근수준 함수의 매개변수나 반환 값 타입으로 사용할 수 없습니다.
public func someFunction(a: AClass) -> AClass {
    // 오류 발생!
    return a
}
```

같은 파일 내부에서 private 접근수준과 `fileprivate` 접근수준은 사용할 때 분명한 차이가 있습니다. `fileprivate` 접근수준으로 지정한 요소는 같은 파일 어떤 코드에서도 접근할 수 있습니다.반면에 `private` 접근수준으로 지정한 요소는 같은 파일 내부에 다른 타입의 코드가 있더라도 접근이 불가능합니다. 그러나 자신을 확장하는 익스텐션(`extension`) 코드가 같은 파일에 존재하는 경우에는 접근할 수 있습니다.

```swift
 public struct SomeType {
       private var privateVariable = 0
       fileprivate var fileprivateVariable = 0
}
// 같은 타입의 익스텐션에서는 private 요소에 접근 가능
extension SomeType {
    public func publicMethod() {
        print("\(self.privateVariable), \(self.fileprivateVariable)")
    }
    private func privateMethod() {
        print("\(self.privateVariable), \(self.fileprivateVariable)")
    }
    fileprivate func fileprivateMethod() {
        print("\(self.privateVariable), \(self.fileprivateVariable)")
    }
}
struct AnotherType {
    var someInstance: SomeType = SomeType()
    mutating func someMethod() {
        // public 접근수준에는 어디서든 접근 가능
        self.someInstance.publicMethod() // 0, 0
        // 같은 파일에 속해 있는 코드이므로 fileprivate 접근수준 요소에 접근 가능
        self.someInstance.fileprivateVariable = 100
        self.someInstance.fileprivateMethod() // 0, 100
        // 다른 타입 내부의 코드이므로 private 요소에 접근 불가! 오류!
        // self.someInstance.privateVariable = 100
        // self.someInstance.privateMethod()
    }
}
```

구조체 또는 클래스를 사용하여 저장 프로퍼티를 구현할 때는 허용된 접근수준에서 프로퍼티 값을 가져갈 수 있습니다. 그러면 값을 변경할 수 없도록 구현하고 싶다면 어떻게 해야 할까????!!

그럴 때는 설정자(Setter)만 더 낮은 접근수준을 갖도록 제한할 수 있습니다. 요소의 접근수준 키워드 뒤에 `{접근수준}(set)`처럼 표현하면 설정자의 접근수준만 더 낮도록 지정해줄 수 있습니다.설정자 접근수준 제한은 프로퍼티, 서브스크립트, 변수 등에 적용될 수 있으며, 해당 요소의 접근수준보다 같거나 낮은 수준으로 제한해주어야 합니다.
```swift
public struct SomeType {
    // 비공개 접근수준 저장 프로퍼티 count
    fileprivate var count1: Int = 0
    private var count2: Int = 0
    // 공개 접근수준 저장 프로퍼티 publicStoredProperty
    public var publicStoredProperty: Int = 0
    // 공개 접근수준 저장 프로퍼티 publicGetOnlyStoredProperty
    // 설정자는 비공개 접근수준
    public private(set) var publicGetOnlyStoredProperty: Int = 0
    // 내부 접근수준 연산 프로퍼티 internalComputedProperty
    internal var internalComputedProperty: Int {
        get {
            return count2
        }
        set {
            count2 += 1
        }
    }
    // 내부 접근수준 저장 프로퍼티 internalGetOnlyComputedProperty
    // 설정자는 비공개 접근수준
    internal private(set) var internalGetOnlyComputedProperty: Int {
        get {
            return count2
        }
        set {
            count2 += 1
        }
    }
}

var someInstance: SomeType = SomeType()
//같은 파일내부에서만 접근 가능
print(someInstance.count1)
//외부에서 접근 불가
//print(someInstance.count2)

// 외부에서 접근자, 설정자 모두 사용 가능
print(someInstance.publicStoredProperty)    // 0
someInstance.publicStoredProperty = 100
// 외부에서 접근자만 사용 가능
print(someInstance.publicGetOnlyStoredProperty) // 0
//someInstance.publicGetOnlyStoredProperty = 100    // 오류 발생
// 외부에서 접근자, 설정자 모두 사용 가능
print(someInstance.internalComputedProperty)    // 0
someInstance.internalComputedProperty = 100
// 외부에서 접근자만 사용 가능
print(someInstance.internalGetOnlyComputedProperty)     // 1
//someInstance.internalGetOnlyComputedProperty = 100    // 오류 발생
```

---


## 프로토콜 지향 언어 POP

## **프로토콜 초기구현**

익스텐션은 기존 타입의 기능을 확장하며, 프로토콜은 프로토콜을 채택한 타입이 원하는 기능을 강제로 구현한다는 점을 우리는 알고 있습니다. 그런데 특정 프로토콜을 정의하고 여러 타입에서 이 프로토콜을 준수하게 만들어 타입마다 똑같은 메서드, 프로퍼티, 서브스크립트 등을 구현해야 한다면…? 얼마나 많은 코드를 중복 사용해야 하며, 유지보수는 얼마나 힘들어질지 생각만 해도 머리가 아플 겁니다. 이때 필요한 게 바로 익스텐션과 프로토콜의 결합입니다.

아래 코드를 통해서 무언가를 보낼 수 있고(`Sendable`) 받을 수 있는(`Receiveable`) 프로토콜을 정의하고, 그 프로토콜에 `extension`을 통해 기능을 구현해보았습니다.

> 익스텐션을 통한 프로토콜의 실제 구현
> 

```swift
// 무언가를 수신할 수 있는 기능
protocol Receiveable {
    func received(data: Any, from: Sendable)
}

extension Receiveable {
    // 메시지를 수신합니다.
    func received(data: Any, from: Sendable) {
        print("\(self) received \(data) from \(from)")
    }
}

// 무언가를 발신할 수 있는 기능
protocol Sendable {
    var from: Sendable { get }
    var to: Receiveable? { get }
    func send(data: Any)static func isSendableInstance(_ instance: Any) -> Bool
}

extension Sendable {
    // 발신은 발신 가능한 객체, 즉 Sendable 프로토콜을 준수하는 타입의 인스턴스여야 합니다.
    var from: Sendable {
        return self
    }

    // 메시지를 발신합니다.
    func send(data: Any) {
        guard let receiver: Receiveable = self.to else {
            print("Message has no receiver")
            return
        }

        // 수신 가능한 인스턴스의 received 메서드를 호출합니다.
        receiver.received(data: data, from: self.from)
    }

    static func isSendableInstance(_ instance: Any) -> Bool {
        if let sendableInstance: Sendable = instance as? Sendable {
            return sendableInstance.to != nil
        }
        return false
    }
}

// 수신, 발신이 가능한 Message 클래스
class Message: Sendable, Receiveable {
    var to: Receiveable?
}

// 수신, 발신이 가능한 Mail 클래스
class Mail: Sendable, Receiveable {
    var to: Receiveable?
}

// 두 Message 인스턴스를 생성합니다.
let myPhoneMessage: Message = Message()
let yourPhoneMesssage: Message = Message()

// 아직 수신받을 인스턴스가 없습니다.
myPhoneMessage.send(data: "Hello") // Message has no receiver

// Message 인스턴스는 발신과 수신이 모두 가능하므로 메시지를 주고 받을 수 있습니다.
myPhoneMessage.to = yourPhoneMesssage
myPhoneMessage.send(data: "Hello") // Message received Hello from Message

// Mail 인스턴스를 두 개 생성합니다.
let myMail: Mail = Mail()
let yourMail: Mail = Mail()

myMail.send(data: "Hi") // Mail has no receiver

// Message와 Mail 모두 Sendable과 Receiveable 프로토콜을 준수하므로
// 서로 주고 받을 수 있습니다.
myMail.to = yourMail
myMail.send(data: "Hi") // Mail received Hi from Mail

myMail.to = myPhoneMessage
myMail.send(data: "Bye") // Message received Bye from Mail

// String은 Sendable 프로토콜을 준수하지 않습니다.
Message.isSendableInstance("Hello") // false

// Message와 Mail은 Sendable 프로토콜을 준수합니다.
Message.isSendableInstance(myPhoneMessage) // true

// yourPhoneMessage는 to 프로퍼티가 설정되지 않아서 보낼 수 없는 상태입니다.
Message.isSendableInstance(yourPhoneMesssage) // false
Mail.isSendableInstance(myPhoneMessage) // true
Mail.isSendableInstance(myMail) // true

```

`Message`와 `Mail` 클래스는 `Receiveable`과 `Sendable` 프로토콜을 채택하고 있지만, 실제로 구현한 것은 저장 인스턴스 프로퍼티인 `to` 뿐입니다. 그 외의 기능은 이미 각 프로토콜의 익스텐션에 구현되어 있습니다.

프로토콜을 정의할 때는 그 프로토콜을 채택한 타입에서 구현해주어야 하는 프로토콜의 요구 사항을 구현할 수 없습니다. 단지 요구사항을 정의만 할 수 있을 뿐입니다.그러나 프로토콜의 익스텐션에는 프로토콜이 요구하는 기능을 실제로 구현해줄 수 있습니다. 다만 익스텐션에는 저장 프로퍼티를 구현할 수 없으므로 저장 프로퍼티는 각각의 타입에서 직접 구현해야 합니다. 이렇게 프로토콜과 익스텐션을 결합하면 코드의 재사용성이 월등히 증가합니다.

이처럼 프로토콜의 요구사항을 익스텐션을 통해 구현하는 것을 ***프로토콜 초기구현(Protocol Default Implementations)***이라고 합니다.

그런데 만약 프로토콜의 익스텐션에서 구현한 기능을 사용하지 않고 타입의 특성에 따라 조금 변경해서 구현하고 싶다면 재정의하면 됩니다.

```swift
class Mail: Sendable, Receiveable {
    var to: Receiveable?
    func send(data: Any) {
        print("Mail의 send 메서드는 재정의되었습니다.")
    }
}

let mailInstance: Mail = Mail()
mailInstance.send(data: "Hello") // Mail의 send 메서드는 재정의되었습니다.
```

사실 위 코드의 `send(data:)` 메서드를 구현한 것은 재정의라고 할 수 없습니다. 이미 프로토콜을 준수하는 타입의 메서드를 호출했기 때문입니다. 특정 프로토콜을 준수하는 타입에 프로토콜의 요구사항을 찾아보고 이미 구현되어 있다면 그 기능을 호출하고, 그렇지 않다면 프로토콜 초기구현의 기능을 호출합니다.

이처럼 프로토콜 초기구현을 통해 기능을 구현한다면 프로토콜 채택만으로 타입에 기능을 추가해 사용할 수 있습니다. 이것이 프로토콜 지향 프로그래밍(Protocol Oriented Programming, P.O.P.)의 핵심 콘셉트 중 하나입니다.

프로토콜 지향 프로그래밍의 서두에서도 언급했지만 실제로 스위프트의 많은 기능은 프로토콜, 익스텐션, 제네릭의 조합으로 구현되어 있습니다.

> 스위프트 표준 라이브러리의 Array 정의
> 

```swift
public struct Array : RandomAccessCollection, MutableCollection {
    public typealias Index = Int
    public typealias Iterator = IndexingIterator<[Element]>

    public var startIndex: Int { get }
    public var endIndex: Int { get }

    public func index(after i: Int) -> Int
    public func formIndex(after i: inout Int)public func index(before i: Int) -> Int
    public func formIndex(before i: inout Int)public func index(_ i: Int, offsetBy n: Int) -> Int
    public func index(_ i: Int, offsetBy n: Int, limitedBy limit: Int) -> Int?

    public func distance(from start: Int, to end: Int) -> Int
    public typealias Indices = CountableRange

    public subscript(index: Int) -> Element
    public subscript(bounds: Range) -> ArraySlicepublic func withUnsafeBufferPointer(_ body: (UnsafeBufferPointer) throws -> R) rethrows -> R
    public mutating func withUnsafeMutableBufferPointer(_ body: (inout UnsafeMutableBufferPointer) throws -> R) rethrows -> R
    public mutating func replaceSubrange(_ subrange: Range, with newElements: C)public mutating func popLast() -> Element?
    public func dropLast(_ n: Int) -> ArraySlicepublic func suffix(_ maxLength: Int) -> ArraySlicepublic func map(_ transform: (Element) throws -> T) rethrows -> [T]
    public func dropFirst(_ n: Int) -> ArraySlicepublic func prefix(_ maxLength: Int) -> ArraySlice// 중략..
    public func reversed() -> ReversedRandomAccessCollection>
    // 생략..
```

익스텐션을 통한 각 프로토콜의 초기구현은 구현코드를 볼 수 없기 때문에 어떻게 구현했는지는 확실히 볼 수 없지만 `Array`의 정의만 보더라도 제네릭, 프로토콜을 다양하게 사용한 것을 볼 수 있습니다. 아마도 각 타입별로 공유하는 초기구현은 익스텐션으로 구현했을 것입니다.

스위프트의 주요 기능을 하나하나 알아갈수록 표준 라이브러리의 코드가 눈에 잘 들어오나요? 하나의 기능을 알아갈 때마다 스위프트 표준 라이브러리를 살펴보면서 어떤 기능을 통해 구현 했는지, 어떻게 연관이 되는지 읽어보고, 해석해보고, 상상해보는 것도 언어를 이해하는 데 도움이 됩니다.

## **기본 타입 확장**

프로토콜 초기구현을 통해 스위프트의 기본 타입을 확장하여 내가 원하는 기능을 공통적으로 추가해볼 수도 있습니다. 스위프트 표준 라이브러리에 정의되어 있는 타입은 실제 구현코드를 보고 수정할 수 없기 때문에 익스텐션, 프로토콜, 프로토콜의 초기구현을 사용해 기본 타입에 기능을 추가해볼 수 있습니다.

> SelfPrintable 프로토콜의 초기구현과 기본타입의 확장
> 

```swift
protocol SelfPrintable {
    func printSelf()
}

extension SelfPrintable {
    func printSelf() {
        print(self)
    }
}

extension Int: SelfPrintable { }
extension String: SelfPrintable { }
extension Double: SelfPrintable { }

1024.printSelf() // 1024
3.14.printSelf() // 3.14
"hana".printSelf() // "hana"
```

위 코드는 코드를 수정할 수 없는 스위프트의 기본 타입인 `Int`, `String`, `Double`에 `SelfPrintable` 프로토콜과 그 프로토콜의 초기구현으로 공통 기능을 간단히 추가해본 것입니다. 스위프트 표준 라이브러리 내부의 공통 기능이 이렇게 프로토콜 초기구현을 통해 구현하지 않았을까 상상해볼 수 있겠죠.

## 정리 !!!

스위프트의 프로토콜 지향 프로그래밍(Protocol Oriented Programming)은 **`protocol`**

의 기능을 `extension` 에 구현한 **프로토콜 초기구현(Protocol Default Implementation)**이 핵심입니다. 

프로토콜 초기구현을 통해 프로토콜의 기능을 미리 구현해두면 프로토콜을 기능의 블럭처럼 가져다 쓸 수 있습니다.

위에예시를 보면서 이해해보자 지호야~
