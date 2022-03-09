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
someString = """
여러줄 문자열을
사용할 수 있습니다.
첫 줄에 겹따옴표 세 개,
마지막 줄에 겹따옴표 세 개를
사용하면 됩니다.
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
