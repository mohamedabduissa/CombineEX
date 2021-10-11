//
//  ViewModel.swift
//  CombineExample
//
//  Created by Mabdu on 11/10/2021.
//

import Foundation

class ViewModel: NSObject {
    
    var message: Publisher<String>?
    
    override init() {
        super.init()
        message = .init()
    }
    func fetch() {
        message?.send("value")
    }
}
