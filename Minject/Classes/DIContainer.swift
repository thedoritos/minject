//
//  DIContainer.swift
//  Minject
//
//  Created by thedoritos on 2020/06/27.
//

import Foundation

struct DIContainer: DIResolver {
    private let factories: [Any]

    init() {
        self.init(factories: [])
    }

    private init(factories: [Any]) {
        self.factories = factories
    }

    func register<T>(_ type: T.Type, _ instance: T) -> DIContainer {
        register(T.self, { _ in instance })
    }

    func register<T>(_ type: T.Type, _ method: @escaping (DIResolver) -> T) -> DIContainer {
        DIContainer(factories: self.factories + [DIFactory(method: method)])
    }

    func resolve<T>() -> T {
        resolve(T.self)
    }

    func resolve<T>(_ type: T.Type) -> T {
        let factories = self.factories.compactMap { $0 as? DIFactory<T> }
        guard let factory = factories.first else {
            fatalError("DIFactory for \(type) is not registered")
        }
        return factory.resolve(self)
    }
}
