//
//  TabViewRouter.swift
//  Boxfort Plus
//
//  Created by Matthew Ryan on 9/2/22.
//

import SwiftUI

final class TabViewRouter: ObservableObject {
    @Published var currentPage: Page = .home
}

enum Page {
    case home
    case search
}
