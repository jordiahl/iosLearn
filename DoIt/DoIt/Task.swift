//
//  Task.swift
//  DoIt
//
//  Created by theBeast on 4/5/17.
//  Copyright © 2017 theBeast. All rights reserved.
//

import Foundation

class Task {
    var name:String = " ";
    var important: Bool = false;
    
    
    public func getName() -> String {
        if important {
            return "❗\(name)"
        }
        return name
    }
    
    init(name:String, important:Bool) {
        self.name = name
        self.important = important
    }
}
