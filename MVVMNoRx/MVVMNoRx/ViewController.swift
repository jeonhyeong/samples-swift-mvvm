//
//  ViewController.swift
//  MVVMNoRx
//
//  Created by jeonhyeong cho on 2020/05/16.
//  Copyright © 2020 jeonhyeong cho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    var viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    func bindViewModel() {
        viewModel.helloText.bindAndFire { helloText in
            DispatchQueue.main.async {
                self.helloLabel.text = helloText
            }
        }
    }
    
    @IBAction func helloButton(_ sender: Any) {
        viewModel.pressedHellButton()
    }
}

