//
//  CalculatorButton.swift
//  BetterCalculator
//
//  Created by Maxwell Finn on 11/16/20.
//

import Foundation
import SwiftUI


enum CalculatorButton: String{
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case equals = "="
    case plus = "+"
    case minus = "-"
    case multiply = "×"
    case divide = "÷"
    case ac = "AC"
    case plusMinus = "+/-"
    case percent = "%"
    case dot = "."

    var backgroundColor: Color{
        switch self {
        case .equals, .plus, .minus, .multiply, .divide:
            return Color(#colorLiteral(red: 0.2622811794, green: 0.1215853617, blue: 0.00790479593, alpha: 1))
        case .ac, .plusMinus, .percent:
            return Color(#colorLiteral(red: 0.4693995714, green: 0.3173444569, blue: 0.3655460477, alpha: 1))
        default:
            return Color(#colorLiteral(red: 0.4229281247, green: 0.0143100135, blue: 0.1891552806, alpha: 1))
        }
    }
    
    func calculate(_ input1: Double, _ input2: Double) -> Double? {
        switch self {
        case .plus:
            return input1 + input2
        case .minus:
            return input1 - input2
        case .multiply:
            return input1 * input2
        case .divide:
            return input1 / input2
        default:
            return nil
        }
    }
}
