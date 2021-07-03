import UIKit

//MARK: -Set Type

//Set<T>

let set : Set<Int> = [1,2,3,4,3,35] // set은 배열과 달리 같은 요소를 중복저장 하지 못한다.
set.count

//MARK: -Inspecting a Set

set.count
set.isEmpty

//MARK: -Testing for Membership

set.contains(1)

//MARK: -Adding and Removing Elements

var words = Set<String>()

var insertResult = words.insert("Swift")
insertResult.inserted
insertResult.memberAfterInsert

insertResult = words.insert("Swift")
insertResult.inserted
insertResult.memberAfterInsert // 중복이므로 저장되지 않는다
insertResult

//MARK: -집합 연산은 여러가있느데 따로 공부하자~~ 여집합 공집합 상위집합 등등~~~












