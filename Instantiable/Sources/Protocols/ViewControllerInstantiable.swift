//
//  ViewControllerInstantiable.swift
//  StoryboardInstantiable
//
//  Created by marcin on 01/10/2017.
//  Copyright © 2017 Marcin Węglarz. All rights reserved.
//

import Foundation
import UIKit

public protocol Instantiable where Self: UIViewController {
    associatedtype Dependency
    
    static var factory: ViewFactory { get }
        
    func setup(dependency: Dependency)
}

public extension Instantiable {
    
    static func instantiate(dependency: Dependency) -> Self {
        
        let viewController: Self = Self.factory.create()
        viewController.setup(dependency: dependency)
        
        return viewController
    }

    static func instantiateInNavigation(dependency: Dependency) -> UINavigationController {
        let viewController: Self = Self.instantiate(dependency: dependency)
        
        return UINavigationController(rootViewController: viewController)
    }
}

public extension Instantiable where Dependency == Void {
    
    static func instantiate() -> Self {
        return Self.instantiate(dependency: ())
    }
}

