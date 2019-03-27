#####과제 0318 - 옵셔널 및 클로저
1. 아래 두 클로저를 Syntax Optimization을 이용하여 최대한 줄여보기

~~~swift
let someClosure: (String, String) -> Bool = { (s1: String, s2: String) -> Bool in
  let isAscending: Bool
  if s1 > s2 {
    isAscending = true
  } else {
    isAscending = false
  }
  return isAscending
}

let otherClosure: ([Int]) -> Int = { (values: [Int]) -> Int in
  var count: Int = 0
  for _ in values {
    count += 1
  }
  return count
}
~~~




2. 옵셔널 타입의 문자열 파라미터 3개를 입력받은 뒤, 옵셔널을 추출하여 Unwrapped 된 하나의 문자열로 합쳐서 반환하는 함수

~~~swift
func combineString(str1: String?, str2: String?, str3: String?) -> String {
  // code
}

// 입력 예시 및 결과
// combineString1(str1: "AB", str2: "CD", str3: "EF") -> "ABCDEF"
// combineString1(str1: "AB", str2: nil, str3: "EF") -> "ABEF"
~~~






#####과제 0319 - 객체지향 프로그래밍
1.다음과 같은 속성(Property)과 행위(Method)를 가지는 클래스 만들어보기.
   구현 내용은 자유롭게

 ** 강아지 (Dog)
 - 속성: 이름, 나이, 몸무게, 견종
 - 행위: 짖기, 먹기

 ** 학생 (Student)
 - 속성: 이름, 나이, 학교명, 학년
 - 행위: 공부하기, 먹기, 잠자기

 ** 아이폰(IPhone)
 - 속성: 기기명, 가격, faceID 기능 여부(Bool)
 - 행위: 전화 걸기, 문자 전송

 ** 커피(Coffee)
 - 속성: 이름, 가격, 원두 원산지


2. 계산기 클래스를 만들고 다음과 같은 기능을 가진 Property 와 Method 정의해보기

 ** 계산기 (Calculator)
 - 속성: 현재 값
 - 행위: 더하기, 빼기, 나누기, 곱하기, 값 초기화

~~~swift
 ex)
 let calculator = Calculator() // 객체생성

 calculator.value  // 0

 calculator.add(10)    // 10
 calculator.add(5)     // 15

 calculator.subtract(9)  // 6
 calculator.subtract(10) // -4

 calculator.multiply(4)   // -16
 calculator.multiply(-10) // 160

 calculator.divide(10)   // 16
 calculator.reset()      // 0
~~~



#####과제 0321 - 객체지향의 4대 특징

1. 첨부된 이미지를 보고 상속을 이용해 구현해보기
<div align="center">
<img src="assets/1번 과제.png" width="600">
</div>


2. 첨부된 각 도형의 이미지를 참고하여 각 도형별 클래스를 만들고 
   각각의 넓이, 둘레, 부피를 구하는 프로퍼티와 메서드 구현하기
   (클래스 구현 연습)
<div align="center">
<img src="assets/2번 과제.png" width="600">
</div>




#####과제 0322 - 앱 라이프싸이클

1. UISwitch : On, Off 가 바뀔 때마다 Label 의 내용이 On, Off 로 표시되도록 구현

2. UISegmentedControl : 선택 내용이 바뀔 때마다 Label 의 내용도 해당 타이틀 값으로 함께 변경되도록 구현
   참고로, 위 2개는 버튼과 달리 event 처리를 touchUpInside 가 아니라 valueChanged 라는 것을 활용해야 합니다.



#####과제 0325 - Alert콘트롤러 및 프레임

1. AlertController 를 통해 Label 의 숫자를 1씩 올리거나 초기화하기
   (위 내용을 스토리보드로  구현하기는 연습. 스토리보드 없이 완전히 코드로만으로 구현하는 것이 과제)

2. 수업 실습 항목 3번 (3개의 빨강, 파랑, 초록색뷰 추가하기) 을 코드로 구현하기



##### 과제  0326 - 텍스트필드 및 뷰 콘트롤러

1. 텍스트 필드영상 참고 
   * 텍스트 필드에 어떤 값을 입력하면 별도의 Label 에 입력된 텍스트 표시.
   * 텍스트 필드가 활성화 되어 있을 땐 Label 의 텍스트 색상이 파란색이고, Font 크기는 40
   * 텍스트 필드가 비활성화되면 Label 텍스트 색상이 빨간색이고, Font 크기는 20

2. ViewController 데이터 전달
   * AViewController 와 BViewController 를 만들고 각각 하나의 Label 생성.
   * AViewController 와 BViewController 를 전환할 때마다 각 Label 에 화면을 전환한 숫자 1씩 증가