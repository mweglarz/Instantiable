//
//  ProgrammaticallyViewFactory.swift
//  Instantiable
//
//  Created by pc_mweglarz on 20/11/2017.
//  Copyright © 2017 mweglarz. All rights reserved.
//

import Foundation

open class ProgrammaticallyViewFactory: ViewFactory {
    
    public init() {}
    
    override open func create<Controller>() -> Controller where Controller: UIViewController {
        let viewController = Controller()
        return viewController
    }
}
