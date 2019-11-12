//
//  Board.swift
//  LectionScrollView
//
//  Created by Alexander on 11.11.2019.
//  Copyright © 2019 Leonid Serebryanyy. All rights reserved.
//

import UIKit

class Board: Codable {
    var title: String
    var items: [String]
    
    init(title: String, items: [String]) {
        self.title = title
        self.items = items
    }
}
