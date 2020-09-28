//
//  ViewController.swift
//  homework_6
//
//  Created by macbook on 28.09.2020.
//  Copyright © 2020 Iskander Nizamov. All rights reserved.
//

import UIKit

struct Queue<T: BinaryInteger> {
    var list = [T]()
    
    mutating func filter(_ even: Bool ) -> [T] {
        var count = list.count
        if even == true {
            for index in list.reversed() {
                count -= 1
                if Int(index) % 2 == 0 {
                    list.remove(at: count)
                }
            }
        } else {
            for index in list.reversed() {
                count -= 1
                if Int(index) % 2 != 0 {
                    list.remove(at: count)
                }
            }
        }
        return list
    }
    
    mutating func map(_ value: Int)-> [T] {
        var newArr: [T] = []
        for index in list {
            newArr.append(index + T(value))
        }
        return newArr
        
    }
    
    subscript(index: Int) -> T? {
        if index >= list.count {
            return nil
        } else {
            return list[index]
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

