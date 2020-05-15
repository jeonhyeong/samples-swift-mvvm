//
//  Dynamic.swift
//  MVVMNoRx
//
//  Created by jeonhyeong cho on 2020/05/16.
//  Copyright © 2020 jeonhyeong cho. All rights reserved.
//

import Foundation

class Dynamic<T> {
    typealias Listener = (T) -> Void
    var listener: Listener?
    var value: T {
        didSet {
            listener?(value)
        }
    }
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    func bindAndFire(_ listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
    
    init(_ v: T) {
        value = v
    }
}
