//: [Previous](@previous)
/***************************************************
 0 ~ 9 사이의 숫자가 들어있는 배열에서 각 숫자가 몇 개씩 있는지 출력하는 함수
 입력 : [1, 3, 3, 3, 8]
 결과 : "숫자 1 : 1개, 숫자 3 : 3개, 숫자 8 : 1개"
 ***************************************************/

print("\n---------- [ ] ----------\n")

func countNumbers(from arr: [Int]) {
  var countArray = Array<Int>(repeating: 0, count: 10)
  for num in arr {
    countArray[num] += 1
  }
  
  for (number, count) in countArray.enumerated() {
    guard count > 0 else { continue }
    print("숫자 \(number) : \(count)개")
  }
}

let numArr1 = [7, 1, 5, 3, 5, 9, 1, 7, 0, 2, 3, 9, 9, 1]
let numArr2 = [0, 1, 2, 3, 4, 5, 0, 1, 2, 3, 4, 5, 0, 1]
countNumbers(from: numArr1)
print()
countNumbers(from: numArr2)


/***************************************************
 [보기] 철수 - apple, 영희 - banana, 진수 - grape, 미희 - strawberry
 위 보기처럼 학생과 좋아하는 과일을 매칭시킨 정보를 Dictionary 형태로 만들고
 스펠링에 'e'가 들어간 과일을 모두 찾아 그것과 매칭되는 학생 이름을 배열로 반환하는 함수
 ***************************************************/
print("\n---------- [ ] ----------\n")

func searchContainingE(dict: [String: String]) -> [String] {
  var result: [String] = []
  for (k, v) in dict {
    if v.contains("e") {
      result.append(k)
    }
  }
  return result
}

let prefFruits = [
  "철수": "apple",
  "영희": "banana",
  "진수": "grape",
  "미희": "strawberry"
]
searchContainingE(dict: prefFruits)


/***************************************************
 100 ~ 900 사이의 숫자 중 하나를 입력받아 각 자리의 숫자가 모두 다른지 여부를 반환하는 함수
 ex) true - 123, 310, 369   /  false - 100, 222, 770
 ***************************************************/
print("\n---------- [ ] ----------\n")

func isAllDigisDiff(num: Int) -> Bool {
  guard 100...900 ~= num else {
    print("100 ~ 900 사이의 숫자만 입력하세요")
    return false
  }
  let numStr = String(num)
  let uniqueValues = Set(numStr)
  return uniqueValues.count == numStr.count
}

print(isAllDigisDiff(num: 123))
print(isAllDigisDiff(num: 369))
print(isAllDigisDiff(num: 222))
print(isAllDigisDiff(num: 770))



//: [Next](@next)
