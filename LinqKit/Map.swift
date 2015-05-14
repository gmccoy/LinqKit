//
//  Map.swift
//  SwiftLinq
//
//  Created by Demis Bellot on 6/9/14.
//  Copyright (c) 2014 ServiceStack LLC. All rights reserved.
//

import Foundation

extension MapCollectionView {
    
    func map<T,U>(fn: (T) -> (U)) -> [U] {
        var to = [U]()
        for x in self {
            let e = fn(x as! T)
            to.append(e)
        }
        return to
    }
}