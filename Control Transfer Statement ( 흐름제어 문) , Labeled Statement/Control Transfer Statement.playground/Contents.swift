import UIKit

let num = 1
switch num {
case 1...10:
    print("begin block")
    if num % 2 != 0{ // 홀수 인지 체크
        break // switch statement를 종료 시킨다
    }
    print("end block")
default:
    break
}
print("done")


for i in 1...10 {
    print("OUTER LOOP" , i)
    for j in 1...10 {
        print("  inner loop" , j)
        
        if j > 1 {
            break // 가장 인접한 statement를 중지한다.  j 가 2 일때 j를 고정 상수로하는
        }
    }
}

print("continue study from here")
// continue Statement
// 현재 반복인것을 중지하고 다음 반복을 실행한다
for index in 1...10{
       if index % 2 == 0 {
        continue // 짝수 인경우 다음 반복 고정 상수 값으로 이동
    }
    print(index)
}

for i in 1...5 {
    print("OUTER LOOP" , i)
    for j in 1...5{
        if j % 2 == 0 {
            continue
        }
        print(" inner loop" , j)
    }
}


//MARK: -Labeled Statement

// 원하는 문에 별칭을 지정해 특정위치에서 그 별칭의 statement를 종료하거나 넘길수 있다!
print("Labled Statement study start from here")
outer: for i in 1 ... 3 {
print("OUTER LOOP" , i)
    for j in 1 ... 3 {
        print("   inner loop " , j)
        break outer
    }
}



