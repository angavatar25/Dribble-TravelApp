//
//  SwipeCard.swift
//  TravelApp
//
//  Created by Ananda Afryan Gemilang on 02/11/20.
//  Copyright © 2020 Ananda Afryan Gemilang. All rights reserved.
//

import Foundation
import SwiftUI

struct CardModel: Identifiable {
    var id: String = UUID().uuidString
    let image: String
    let place: String
    let category: String
    let starRating: Int
    
    init(image: String, place: String, category: String, starRating: Int) {
        self.image = image
        self.place = place
        self.category = category
        self.starRating = starRating
    }
}

let CardData = [
    CardModel(image: "Kos", place: "Santorini", category: "Hotel, Cottage", starRating: 5),
    CardModel(image: "Kos", place: "Santorini", category: "Hotel, Cottage", starRating: 5),
    CardModel(image: "Kos", place: "Santorini", category: "Hotel, Cottage", starRating: 5),
    CardModel(image: "Kos", place: "Santorini", category: "Hotel, Cottage", starRating: 5),
    CardModel(image: "Kos", place: "Santorini", category: "Hotel, Cottage", starRating: 5)
]
