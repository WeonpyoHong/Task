import UIKit

//[ 과제 ]


// 1.이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수

func printIntroduceMyself(name:String, age:Int) {
    print("Hello, My name is \(name), I'm \(age) year's old")
}

printIntroduceMyself(name: "홍원표", age: 37)




// 2.정수를 하나 입력받아 2의 배수 여부를 반환하는 함수

func returnIfitis(number:Int) -> String {
    var trueFalse: String = ""
    
    if number%2 == 0 {
        trueFalse = "2의 배수"
    }else {
        trueFalse = "2의 배수가 아님"
    }
    
    return trueFalse
}


print(returnIfitis(number: 4))
print(returnIfitis(number: 5))




// 3.정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)

func returnMutiply(a:Int, b:Int = 10) -> Int {
    return a * b
}

print(returnMutiply(a: 5, b: 4))
print(returnMutiply(a: 3, b: 4))


// 4.4과목의 시험 점수를 입력받아 평균 점수를 반환하는 함수

func returnAverage(_ textNum: Double...) -> Double {
    var total = 0.0
    for number in textNum {
        total += number
    }
    
    return total / Double(textNum.count)
}


print("너의 평균점수를 알려줄께: \(returnAverage(10, 20, 30, 40, 50))")



// 5.점수(문자 또는 숫자)를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)

//숫자를 입력받는 경우
func returnCredit(grade: Int) -> String {
    var credit = " "
    if grade >= 90 {
        credit = "A"
    }else if grade >= 80 {
        credit = "B"
    }else if grade >= 70 {
        credit = "C"
    }else {
        credit = "F"
    }
    return credit
}

//문자를 입력받는 경우
func returnCredit(grade: String) -> String {
    var credit = " "
    let gradeIs:Int? = Int(grade)
    
    if gradeIs! >= 90 {
        credit = "A"
    }else if gradeIs! >= 80 {
        credit = "B"
    }else if gradeIs! >= 70 {
        credit = "C"
    }else {
        credit = "F"
    }
    return credit
}

print("너의 학점을 알려줄께: " + returnCredit(grade: 80))
print("너의 학점을 알려줄께: " + returnCredit(grade: "90"))



// 6.점수(문자 또는 숫자)를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)

//숫자를 입력하는 경우
func returnAverageCredit(_ textNum: Int...) -> String {
    var average = 0.0
    for grade in textNum {
        average += Double(grade)
    }
    average /= Double(textNum.count)
    
    if average >= 90 {
        return "A"
    }else if average >= 80 {
        return "B"
    }else if average >= 70 {
        return "C"
    }else {
        return "F"
    }
}

print("평균점수에 해당하는 너의 학점을 알려줄께: " + returnAverageCredit(90, 90, 80, 90, 90, 90))
