
import Foundation

/***************************************************
 자연수를 입력받아 원래 숫자를 반대 순서로 뒤집은 숫자를 반환하는 함수
 ex) 123 -> 321 , 10293 -> 39201
 ***************************************************/

func reverseDigit(num: Int) -> Int {
  var reversedNumber = 0
  var num = num
  
  while num > 0 {
    reversedNumber = reversedNumber * 10 + num % 10
    num /= 10
  }
  
  return reversedNumber
}


print(reverseDigit(num: 123))
print(reverseDigit(num: 10293))
print(reverseDigit(num: 824))


/***************************************************
 주어진 문자 배열에서 중복되지 않는 문자만을 뽑아내 배열로 반환해주는 함수
 ex) ["a", "b", "c", "a", "e", "d", "c"]  ->  ["b", "e" ,"d"]
 ***************************************************/

print("\n---------- [  ] ----------\n")

// 아래는 Array를 이용한 풀이 방식.    Dictionary를 이용해서도 가능
func printUniqueValues(from arr: [String]) -> [String] {
  var recordArr: [String] = []
  var result: [String] = []
  
  for str in strArr {
    if !result.contains(str) && !recordArr.contains(str) {
      result.append(str)
    } else if let index = result.firstIndex(of: str) {
      result.remove(at: index)
      recordArr.append(str)
    }
  }
  return result
}

let strArr = ["a", "b", "c", "a", "e", "d", "c"]
print(printUniqueValues(from: strArr))


/***************************************************
 임의의 정수 배열을 입력받았을 때 홀수는 배열의 앞부분, 짝수는 배열의 뒷부분에 위치하도록 구성된 새로운 배열을 반환하는 함수
 ex) [2, 8, 7, 1, 4, 3] -> [7, 1, 3, 2, 8, 4]
 ***************************************************/
print("\n---------- [ ] ----------\n")

func swapNumbers(arr: [Int]) -> [Int] {
  var frontArr: [Int] = []
  var rearArr: [Int] = []
  
  for number in arr {
    if (number % 2) == 0 {
      rearArr.append(number)
    } else {
      frontArr.append(number)
    }
  }
  return frontArr + rearArr
}

swapNumbers(arr: [2, 8, 7, 1, 4, 3])
swapNumbers(arr: [32, 12, 59, 89, 38, 45, 11])



/***************************************************
 2개의 자연수와 사칙연산(+, -, *, /)을 가진 enum 타입 Arithmetic 을 입력 파라미터로 받아 해당 연산의 결과를 반환하는 함수 구현
 enum Arithmetic {
   case addition, subtraction, multiplication, division
 }
 func calculator(operand1: Int, operand2: Int, op: Arithmetic) -> Int {
   // 코드
 }
 ***************************************************/

print("\n---------- [ ] ----------\n")

enum Arithmetic {
  case addition, subtraction, multiplication, division
}

func calculator(operand1: Int, operand2: Int, op: Arithmetic) -> Int {
  switch op {
  case .addition:
    return operand1 + operand2
  case .subtraction:
    return operand1 - operand2
  case .multiplication:
    return operand1 * operand2
  case .division:
    return Int(operand1 / operand2)
  }
}

print(calculator(operand1: 15, operand2: 25, op: .addition))
print(calculator(operand1: 30, operand2: 10, op: .subtraction))
print(calculator(operand1: 12, operand2: 10, op: .multiplication))
print(calculator(operand1: 24, operand2: 6, op: .division))


  
/***************************************************
 식육목 모식도 자료를 보고 Dictionary 자료형에 맞도록 중첩형태로 데이터 저장하기
 + 해당 변수에서 표범 하위 분류를 찾아 사자와 호랑이를 출력하기
 ***************************************************/
//: ![식육목 모식도](image.png)
print("\n---------- [  ] ----------\n")

let dict = [
  "식육목": [
    "개과": [
      "개": [
        "자칼",
        "늑대",
        "북미산 이리",
      ],
      "여우": [
        "아메리카 여우",
        "유럽 여우",
      ]
    ],
    "고양이과": [
      "고양이": [
        "고양이",
        "살쾡이"
      ],
      "표범": [
        "사자",
        "호랑이"
      ]
    ]
  ]
]

if let 식육목 = dict["식육목"],
  let 고양이과 = 식육목["고양이과"],
  let 표범속 = 고양이과["표범"] {
  for 종 in 표범속 {
    print(종)
  }
}



