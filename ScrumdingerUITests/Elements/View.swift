//
//  View.swift
//
//  Created by James Sedlacek on 2/21/25.
//

import Foundation
import XCTest

enum View: String {
    case scrumCard = "ScrumCard"

    var element: XCUIElement {
        switch self {
        case .scrumCard:
            XCUIApplication().staticTexts.matching(
                NSPredicate(
                    format: "identifier BEGINSWITH %@", rawValue
                )
            ).firstMatch
        }
    }

    // Returns a specific scrum card element based on meeting title
    static func scrumCard(withTitle title: String) -> XCUIElement {
        XCUIApplication().staticTexts[title].firstMatch
    }
}
