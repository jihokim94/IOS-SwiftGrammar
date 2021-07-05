import UIKit

//MARK: -Subscript

/*
 instance[index]
 instance[key]
 instance[range]
 */

let list = ["A" ,"B", "C"]
list[0]

class List {
    var data = [1,2,3]
    
    subscript(i index:Int) -> Int {
        get{
            return data[index]
        }
        set {
            data[index] = newValue
        }
    }
}

var a = List()
a[i: 0]
a[i: 1] = 123


struct Matrix {
    var data = [[1,2,3],[4,5,6],[7,8,9]]
    
    subscript(row : Int, col: Int) -> Int {
        return data[row][col]
    }
}

let m = Matrix()
m[2,2]


//MARK: -Dynamic Member Lookup

@dynamicMemberLookup
struct Person{
    var name: String
    var address : String
    
    subscript(dynamicMember member : String) -> String {
        switch member {
        case "nameKey":
            return name
        case "addressKey":
            return address
        default :
            return "n/a"
        }
    }
}

let p = Person(name: "James", address: "seoul")

p.name
p.address

p[dynamicMember: "nameKey"]
p[dynamicMember: "addressKey"]

// 다이나믹멤버 룩업은 아래와 같이 점문법으로 서브스크립트에 접근 가능하다
p.nameKey
p.addressKey

p.missingKey
