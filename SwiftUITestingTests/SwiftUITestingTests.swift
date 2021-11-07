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
    
    func test_body_containsDarkModeToggle() throws {
        let sut = makeSUT()
        let toggle = try findToggle(in: sut)
        
        XCTAssertEqual(try toggle.labelView().text().string(), "Dark Mode?")
    }
    
    func test_toggle_whenTapped_switchesToTrue() throws {
        let sut = makeSUT()
        let toggle = try findToggle(in: sut)
        
        XCTAssertFalse(try toggle.isOn())
        try toggle.tap()
        XCTAssertTrue(try toggle.isOn())
    }
    
    // MARK: - Helpers
    
    private func makeSUT() -> ContentView {
        ContentView(viewModel: .init())
    }
    
    private func findToggle(in sut: ContentView) throws -> InspectableView<ViewType.Toggle> {
        try sut.inspect().find(viewWithId: ContentView.Identifiers.darkModeSwitch).toggle()
    }
}
