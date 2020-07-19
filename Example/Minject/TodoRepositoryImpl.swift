//
//  TodoRepositoryImpl.swift
//  Minject_Example
//
//  Created by thedoritos on 2020/06/27.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

struct TodoRepositoryImpl: TodoRepository {
    static let shared: TodoRepository = TodoRepositoryImpl()
    private init() {}

    private var records: [Todo] = [
        Todo(title: "Create Example"),
        Todo(title: "Merge Pull Request"),
        Todo(title: "Update Pods"),
    ]

    func select() -> [Todo] {
        return records
    }
}
