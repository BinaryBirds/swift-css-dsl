//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

import Foundation

@resultBuilder
enum PropertyBuilder {
    static func buildBlock(_ components: Property...) -> [Property] {
        components
    }
}