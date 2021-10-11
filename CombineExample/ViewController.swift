//
//  ViewController.swift
//  CombineExample
//
//  Created by Mabdu on 11/10/2021.
//

import UIKit
class ViewController: UIViewController {
    
    var publisher: Publisher<String>?

    override func viewDidLoad() {
        super.viewDidLoad()
        combine()
    }
    func combine() {
        publisher = .init()
        publisher?.listen(value: { value in
            print(value)
        })
        publisher?.listen(error: { error in
            print(error)
        })
        publisher?.send("VALUE")
        publisher?.send(error: .network)
    }
}

