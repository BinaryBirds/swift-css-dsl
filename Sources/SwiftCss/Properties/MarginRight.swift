//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Sets the right margin of an element
func MarginRight(_ value: String) -> Property {
    Property(name: "margin-right", value: value)
}

func MarginRight(_ value: MarginValue = .length(.zero)) -> Property {
    MarginRight(value.rawValue)
}

func MarginRight(_ value: Unit = .zero) -> Property {
    MarginRight(.length(value))
}
