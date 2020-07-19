# Minject

[![CI Status](https://img.shields.io/travis/thedoritos/Minject.svg?style=flat)](https://travis-ci.org/thedoritos/Minject)
[![Version](https://img.shields.io/cocoapods/v/Minject.svg?style=flat)](https://cocoapods.org/pods/Minject)
[![License](https://img.shields.io/cocoapods/l/Minject.svg?style=flat)](https://cocoapods.org/pods/Minject)
[![Platform](https://img.shields.io/cocoapods/p/Minject.svg?style=flat)](https://cocoapods.org/pods/Minject)

Minject is a minimum Dependency Injection framework for Swift.

It is designed for developers to avoid depending on "magical" behavior and have explicit control by self.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

### Minimum DI

What you can do with Minject is simple. `Register` dependencies into the container and `resolve` when you need an instance.

```swift
let diContainer = DIContainer()
    .register(TodoRepository.self, TodoRepositoryImpl.shared)
    .register(TodoPresenter.self) { TodoPresenter(todoRepository: $0.resolve()) }

let repository: TodoRepository = diContainer.resolve()
let presenter: TodoPresenter = diContainer.resolve()
```

## Requirements

See `Minject.podspec` file for more info.

## Installation

Minject is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Minject'
```

## Author

Tomohiro Matsumura, thedoritos@gmail.com

## License

Minject is available under the MIT license. See the LICENSE file for more info.
