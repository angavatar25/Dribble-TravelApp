//
//  SwipeStories.swift
//  TravelApp
//
//  Created by Ananda Afryan Gemilang on 02/11/20.
//  Copyright © 2020 Ananda Afryan Gemilang. All rights reserved.
//

import Foundation
import SwiftUI

struct StoryModel: Identifiable {
    var id: String = UUID().uuidString
    let image: String
    
    init(image: String) {
        self.image = image
    }
}

let StoryData = [
    StoryModel(image: "girlPhoto"),
    StoryModel(image: "girlPhoto"),
    StoryModel(image: "girlPhoto"),
    StoryModel(image: "girlPhoto"),
    StoryModel(image: "girlPhoto")
]
