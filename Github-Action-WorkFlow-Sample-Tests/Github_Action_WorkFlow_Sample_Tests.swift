//
//  Github_Action_WorkFlow_Sample_Tests.swift
//  Github-Action-WorkFlow-Sample-Tests
//
//  Created by Sparkout on 11/12/22.
//

import XCTest
import SwiftKeychainWrapper
@testable import Github_Action_WorkFlow_Sample

class Github_Action_WorkFlow_Sample_Tests: XCTestCase {

    func test_myFirst_Success() throws {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyBoard.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        sut.loadViewIfNeeded()
        XCTAssertTrue(sut.viewModel.success, "ViewModel need to be success")
        let noLoginOptional: Bool? = KeychainWrapper.standard[.noLogin]
        let noLogin: Bool = try XCTUnwrap(noLoginOptional, "No login not to be nil")
        XCTAssertTrue(noLogin, "No login need to be true")
        // Validate configuration
        XCTAssertEqual(sut.title, "Home")
        XCTAssertNotNil(sut.myTextField)
    }
}
