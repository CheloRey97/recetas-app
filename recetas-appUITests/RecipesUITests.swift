//
//  recetas_appUITests.swift
//  recetas-appUITests
//
//  Created by Marcelo Rey on 03-09-22.
//

import XCTest
@testable import recetas_app

class RecipesUITests: XCTestCase {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    
    func test_search_any_recipe_then_open_its_view_then_read_instructions() throws {
        let app = XCUIApplication()
        app.launch()
        sleep(1)
        app.tabBars.firstMatch.buttons.element(boundBy: 1).tap()
        sleep(1)
        app.searchFields["Busca recetas por nombre o ingredientes"].tap()
        sleep(1)
        app.typeText("Pizza")
        sleep(1)
        app.images["pizza"].tap()
        sleep(2)
        app.swipeUp(velocity: 100)
        sleep(3)
    }

    func test_open_recipe_card_then_open_map() throws {
        let app = XCUIApplication()
        app.launch()
        sleep(1)
        app.images["lasagna"].tap()
        sleep(1)
        app.buttons["Ver en mapa"].tap()
        app.textViews.isEqual("Napoles, Italia")
        sleep(3)
    }
}
