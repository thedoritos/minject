//
//  DIContainer.swift
//  Minject
//
//  Created by thedoritos on 2020/06/27.
//

import Foundation

public struct DIContainer: DIResolver {
    private let factories: [Any]

    public init() {
        self.init(factories: [])
    }

    private init(factories: [Any]) {
        self.factories = factories
    }

    public func register<T>(_ type: T.Type, _ instance: T) -> DIContainer {
        self.register(T.self, { _ in instance })
    }

    public func register<T>(_ type: T.Type, _ method: @escaping (DIResolver) -> T) -> DIContainer {
        DIContainer(factories: self.factories + [DIFactory(method: method)])
    }

    public func resolve<T>() -> T {
        self.resolve(T.self)
    }

    public func resolve<T>(_ type: T.Type) -> T {
        let factories = self.factories.compactMap { $0 as? DIFactory<T> }
        guard let factory = factories.first else {
            fatalError("DIFactory for \(type) is not registered")
        }
        return factory.resolve(self)
    }
}
