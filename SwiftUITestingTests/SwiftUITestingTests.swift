//
//  SwiftUITestingTests.swift
//  SwiftUITestingTests
//
//  Created by Kazakova Nataliya on 07.11.2021.
//

import XCTest
@testable import SwiftUITesting
import ViewInspector

extension ContentView: Inspectable {}

class SwiftUITestingTests: XCTestCase {

    func test_ContentView() throws {
        let sut = ContentView()
        
        let textView = try sut.inspect().find(viewWithId: "hello").text()
        let content = try textView.string()
        XCTAssertEqual(content, "Hello, world!")
    }

}
