//
//  Array+Extension.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/20.
//

import Foundation

extension Array {
    
    func chunks(size: Int) -> [ArraySlice<Element>] {
        
        var chunks: [ArraySlice<Element>] = [ArraySlice<Element>]()
        
        for index in stride(from: 0, through: self.count - 1, by: size) {
            
            var chunk = ArraySlice<Element>()
            let end = index + size
            
            if end >= self.count {
                chunk = self[index...self.count]
            } else {
                chunk = self[index..<end]
            }
            
            chunks.append(chunk)
            
            if (end + 1) == self.count {
                let remainingChunk = self[end..<self.count]
                chunks.append(remainingChunk)
            }
        }
        
        return chunks
    }
}
