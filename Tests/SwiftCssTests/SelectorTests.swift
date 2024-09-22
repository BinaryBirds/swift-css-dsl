//
//  SelectorTests.swift
//  SwiftCssTests
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import XCTest
@testable import SwiftCss

final class SelectorTests: XCTestCase {
    
    // MARK: - margin

    func testRules() {
        let css = Stylesheet([
            Charset("UTF-8")
        ])
        
        XCTAssertEqual(StylesheetRenderer().render(css), #"""
                               @charset "UTF-8";
                               """#)
    }
    
    func testMarginBottom() {
        let css = Stylesheet {
            Media {
                All {
                    MarginTop(.length(.px(8)))
                    MarginBottom(.length(.percent(25)))
                }
            }
        }
        
        XCTAssertEqual(StylesheetRenderer().render(css), #"""
                               * {
                                   margin-top: 8px;
                                   margin-bottom: 25%;
                               }
                               """#)
    }
    
    // MARK: - padding
    
    func testPadding() {
        let css = Stylesheet {
            Media {
                All {
                    Padding(.zero)
                    Padding(.rem(8))
                    Padding(horizontal: .px(8))
                    Padding(vertical: .inherit, horizontal: .length(.zero))
                }
            }
        }

        XCTAssertEqual(StylesheetRenderer().render(css), #"""
                               * {
                                   padding: 0;
                                   padding: 8rem;
                                   padding: 0 8px;
                                   padding: inherit 0;
                               }
                               """#)
    }
}


