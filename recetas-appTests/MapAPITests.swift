//
//  MapAPITests.swift
//  recetas-appTests
//
//  Created by Marcelo Rey on 08-09-22.
//

import XCTest
@testable import recetas_app

class MapAPITests: XCTestCase {
    
    var sut: MapAPI!

    override func setUpWithError() throws {
        sut = MapAPI()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    func test_GetLocation_ShouldSetANewLocationInMap() {
        let result: () = sut.getLocation(address: "Valdivia Chile", delta: 0.5)
        XCTAssertNoThrow(result)
    }
}
