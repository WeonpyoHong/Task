//: [Previous](@previous)

import Foundation


/***************************************************
 celcius, fahrenheit, kelvin 온도 3가지 케이스를 가진 Temperature enum 타입을 정의
 각 케이스에는 Double 타입의 Associated Value 를 받도록 함
 
 추가로 각 온도를 섭씨 온도로 변환해주는 toCelcius() 함수 구현
 섭씨 = (화씨 - 32) * 5 / 9
 섭씨 = 켈빈 + 273
 ***************************************************/

enum Temperature {
  case celcius(Double)
  case fahrenheit(Double)
  case kelvin(Double)
  
  func toCelcius() -> Double {
    switch self {
    case .celcius(let value): return value
    case .fahrenheit(let value): return (value - 32) * 5 / 9
    case .kelvin(let value): return value + 273
    }
  }
}

var temperature: Temperature = .celcius(30)
temperature.toCelcius()

temperature = .fahrenheit(86)
temperature.toCelcius()

temperature = .kelvin(-273)
temperature.toCelcius()



/***************************************************
 각 케이스별로 연산을 수행하고 그 값을 반환하는 evalue 함수 구현
 ***************************************************/

indirect enum ArithmeticExpression {
  case number(Int)
  case addition(ArithmeticExpression, ArithmeticExpression)
  case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
  switch expression {
  case let .number(value):
    return value
  case let .addition(left, right):
    return evaluate(left) + evaluate(right)
  case let .multiplication(left, right):
    return evaluate(left) * evaluate(right)
  }
}

evaluate(five)
evaluate(sum)
evaluate(product)


//: [Next](@next)
