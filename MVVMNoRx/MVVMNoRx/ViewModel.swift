//
//  ViewModel.swift
//  MVVMNoRx
//
//  Created by jeonhyeong cho on 2020/05/16.
//  Copyright © 2020 jeonhyeong cho. All rights reserved.
//

import Foundation

class ViewModel {
    var helloText = Dynamic("")
    
    func pressedHellButton() {
        helloText.value = "Hello World"
    }
}
