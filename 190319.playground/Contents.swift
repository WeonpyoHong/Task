import UIKit

//[ 과제 ]
//1. 다음과 같은 속성(Property)과 행위(Method)를 가지는 클래스 만들어보기.
//구현 내용은 자유롭게


//    ** 강아지 (Dog)
//    - 속성: 이름, 나이, 몸무게, 견종
//- 행위: 짖기, 먹기

class Dog {
    var name: String
    var age: Int
    var weight: Int
    var sort: String

    init(name: String, age: Int, weight: Int, sort: String) {
        self.name = name
        self.age = age
        self.weight = weight
        self.sort = sort
    }
    
    func bark() {
        print("\(name)가 짖는다.")
    }
    
    func eat() {
        print("\(name)가 먹는다.")
    }
}

//** 학생 (Student)
//- 속성: 이름, 나이, 학교명, 학년
//- 행위: 공부하기, 먹기, 잠자기

class Student {
    var name: String
    var age: Int
    var schoolName: String
    var grade: Int
    
    init(name: String, age: Int, schoolName: String, grade: Int) {
        self.name = name
        self.age = age
        self.schoolName = schoolName
        self.grade = grade
    }
    
    func study() {
        print("\(name)가 공부한다.")
    }
    
    func eat() {
        print("\(name)가 먹는다.")
    }

    func sleep() {
        print("\(name)가 잔다.")
    }
    
}



//** 아이폰(IPhone)
//- 속성: 기기명, 가격, faceID 기능 여부(Bool)
//- 행위: 전화 걸기, 문자 전송

class Iphone {
    var name: String
    var price: Int
    var faceId: Bool
    
    init(name: String, price: Int, faceId: Bool) {
        self.name = name
        self.price = price
        self.faceId = faceId
    }
    
    func calling() {
        print("\(name)가 공부한다.")
    }
    
    func textMessaging() {
        print("\(name)가 문자를 보낸다.")
    }
    
}


//** 커피(Coffee)
//- 속성: 이름, 가격, 원두 원산지

class Coffee {
    var name: String
    var price: Int
    var madeIn: String
    
    init(name: String, price: Int, madeIn: String) {
        self.name = name
        self.price = price
        self.madeIn = madeIn
    }
}


//2. 계산기 클래스를 만들고 다음과 같은 기능을 가진 Property 와 Method 정의해보기
//
//** 계산기 (Calculator)
//- 속성: 현재 값
//- 행위: 더하기, 빼기, 나누기, 곱하기, 값 초기화



class Calculator {
    var value: Double = 0.0
    
    init() {
        value = 0.0
    }
    
    func add(_ no: Double) -> Double {
        value += no
        return value
    }
    
    func subtract(_ no: Double) -> Double {
        value -= no
        return value
    }
    
    func multiply(_ no: Double) -> Double {
        value *= no
        return value
    }
    
    func divide(_ no: Double) -> Double {
        value /= no
        return value
    }
}



let calculator = Calculator()    // 객체생성

calculator.value

calculator.add(10)
calculator.add(5)     // 15

calculator.subtract(9)  // 6
calculator.subtract(10) // -4

calculator.multiply(4)   // -16
calculator.multiply(-10) // 160

