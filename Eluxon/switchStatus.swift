//
//  switchStatus.swift
//  Eluxon
//
//  Created by Grazietta Hof on 2017-09-17.
//  Copyright © 2017 Grazietta Hof. All rights reserved.
//

import Foundation
enum switchStatus: Togglable {

    case on, off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }


}
