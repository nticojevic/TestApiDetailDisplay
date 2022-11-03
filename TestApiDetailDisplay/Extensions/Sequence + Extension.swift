//
//  Sequence + Extension.swift
//  TestApiDetailDisplay
//
//  Created by Nikola Ticojevic on 11/3/22.
//

import Foundation

extension Sequence {
    var minimalDescription: String {
        return map { "\($0)" }.joined(separator: ", ")
    }
}
