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

ex) print(”안녕하세요 \(name)님”) → “안녕하세요 김지호님

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

### 함수
