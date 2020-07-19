//
//  DIResolver.swift
//  Minject
//
//  Created by thedoritos on 2020/06/27.
//

import Foundation

public protocol DIResolver {
    func resolve<T>() -> T

    func resolve<T>(_ type: T.Type) -> T
}
