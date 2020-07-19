//
//  TodoRepository.swift
//  Minject_Example
//
//  Created by thedoritos on 2020/06/27.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

protocol TodoRepository {
    func select() -> [Todo]
}
