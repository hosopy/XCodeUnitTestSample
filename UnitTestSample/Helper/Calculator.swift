//
//  Calculator.swift
//  UnitTestSample
//
//  Created by hosopy on 2015/12/10.
//  Copyright © 2015年 hosopy. All rights reserved.
//

import Foundation

class Calculator {

    class func add(a a: Int, b: Int) -> Int {
        return a + b
    }
    
    class func addAsync(a a: Int, b: Int, delay: NSTimeInterval, completion: (Int) -> Void) {
        let delay = dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC)))
        dispatch_after(delay, dispatch_get_main_queue()) {
            completion(a + b)
        }
    }
}