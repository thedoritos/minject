//
//  TodoPresenter.swift
//  Minject_Example
//
//  Created by thedoritos on 2020/07/19.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

protocol TodoViewContract: class {
    func showItems(todo: [Todo])
}

class TodoPresenter {
    private weak var view: TodoViewContract?

    private let todoRepository: TodoRepository

    init(todoRepository: TodoRepository) {
        self.todoRepository = todoRepository
    }

    func viewDidLoad(_ view: TodoViewContract) {
        self.view = view

        let todo = self.todoRepository.select()
        self.view?.showItems(todo: todo)
    }
}
