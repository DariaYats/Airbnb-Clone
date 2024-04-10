//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Дарья Яцынюк on 09.04.2024.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
