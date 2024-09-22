//
//  Margin.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum MarginValue {
    /// Specifies a fixed bottom margin in px, cm, em, etc. Default value is 0. Negative values are allowed.
    case length(Unit)
    // The browser calculates a bottom margin
    case auto
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
    
    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func Margin(_ value: String) -> Property {
    Property(name: "margin", value: value)
}

/// Sets all the margin properties in one declaration
public func Margin(_ value: MarginValue = .length(.zero)) -> Property {
    Margin(value.rawValue)
}

public func Margin(_ value: Unit = .zero) -> Property {
    Margin(.length(value))
}

public func Margin(vertical: MarginValue = .length(.zero),
                   horizontal: MarginValue = .length(.zero)) -> Property {
    Margin(vertical.rawValue + " " + horizontal.rawValue)
}

public func Margin(vertical: Unit = .zero,
                   horizontal: Unit = .zero) -> Property {
    Margin(vertical: .length(vertical), horizontal: .length(horizontal))
}

public func Margin(top: MarginValue = .length(.zero),
                   right: MarginValue = .length(.zero),
                   bottom: MarginValue = .length(.zero),
                   left: MarginValue = .length(.zero)) -> Property {
    Margin(top.rawValue + " " + right.rawValue + " " + bottom.rawValue + " " + left.rawValue)
}

public func Margin(top: Unit = .zero,
                   right: Unit = .zero,
                   bottom: Unit = .zero,
                   left: Unit = .zero) -> Property {
    Margin(top: .length(top), right: .length(right), bottom: .length(bottom), left: .length(left))
}
