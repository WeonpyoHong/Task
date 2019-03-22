import UIKit


//4.
//아래 두 클로저를 Syntax Optimization을 이용하여 최대한 줄여보기


//(1) 첫번째 함수
let someClosure: (String, String) -> Bool = { (s1: String, s2: String) -> Bool in
    let isAscending: Bool
    if s1 > s2 {
        isAscending = true
    } else {
        isAscending = false
    }
    return isAscending
}


//줄여서 표현하기
let someClosure1: (String, String) -> Bool = { $0 > $1 }


//확인하기
someClosure("a", "b")
someClosure1("a", "b")




//(2) 두번째 함수
let otherClosure: ([Int]) -> Int = { (values: [Int]) -> Int in
    var count: Int = 0
    for _ in values {
        count += 1
    }
    return count
}


//줄여서 표현하기
let otherClosure1: ([Int]) -> Int = { $0.count }






//5.
//옵셔널 타입의 문자열 파라미터 3개를 입력받은 뒤, 옵셔널을 추출하여 Unwrapped 된 하나의 문자열로 합쳐서 반환하는 함수
// 입력 예시 및 결과
// combineString1(str1: "AB", str2: "CD", str3: "EF") -> "ABCDEF"
// combineString1(str1: "AB", str2: nil, str3: "EF") -> "ABEF"


func combineString1(str1: String?, str2: String?, str3: String?) -> String {
    // code
    var sum = ""
    
    if let str1 = str1 { sum += str1 }
    if let str2 = str2 { sum += str2 }
    if let str3 = str3 { sum += str3 }
    
    return sum
    
}


combineString1(str1: "AB", str2: "CD", str3: "EF")
combineString1(str1: "AB", str2: nil, str3: "EF")

