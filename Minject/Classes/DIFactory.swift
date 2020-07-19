//
//  DIFactory.swift
//  Minject
//
//  Created by thedoritos on 2020/06/27.
//

import Foundation

struct DIFactory<T> {
    let method: (DIResolver) -> T

    func resolve(_ resolver: DIResolver) -> T {
        self.method(resolver)
    }
}
