//
// Created by Roman Zolin on 9/18/17.
// Copyright (c) 2017 Roman Zolin. All rights reserved.
//

import Foundation

class Record  {

    required public init() {
        
    }
    
    static public func find(id: String) -> Self {
        return Generic.fetch<Self>()
    }

}

class Person: Record {

    var id: String?

}

class Generic {

    public static func fetch<T: Record>() -> T {
        return T.init()
    }
}
