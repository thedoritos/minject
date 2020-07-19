//
//  AppContainer.swift
//  Minject_Example
//
//  Created by thedoritos on 2020/07/19.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Minject

class AppContainer {
    static let shared: AppContainer = AppContainer()
    private init() {}

    private var diContainerInstance: DIContainer?

    var diContainer: DIContainer {
        if let instance = self.diContainerInstance { return instance }

        let instance = DIContainer()
            .register(TodoRepository.self, TodoRepositoryImpl.shared)
            .register(TodoPresenter.self) { TodoPresenter(todoRepository: $0.resolve()) }

        self.diContainerInstance = instance
        return instance
    }
}
