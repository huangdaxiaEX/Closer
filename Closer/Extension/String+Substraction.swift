//
//  String+Substraction.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/18.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

extension String {
    
    func substring(to index: Int) -> String? {
        if index < 0 || index > characters.count { return nil }
        return self.substring(to: characters.index(startIndex, offsetBy: index))
    }
    
    func substring(by length: Int) -> String {
        if length < 0 || characters.count <= length {
            return self
        }
        
        return substring(to: length)!
    }
    
    func substring(_ from: Int, _ to: Int? = nil) -> String {
        let start = from > -1 ? self.startIndex : self.endIndex
        let startIndex = index(start, offsetBy: from)
        
        var end: String.Index
        var endIndex: String.Index
        
        if let e = to {
            end = e > -1 ? self.startIndex : self.endIndex
            endIndex = index(end, offsetBy: e)
        } else {
            end = self.endIndex
            endIndex = self.endIndex
        }
        
        let range = (startIndex ..< endIndex)
        return self.substring(with: range)
    }
}
