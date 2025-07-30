//
//  HexaPlayerConfig.swift
//  HexaPlayer
//
//  Created by Hexabrain on 30/07/25.
//

import Foundation

open class HexaPlayerConfig: NSObject {
    
    fileprivate var _id: String?
    fileprivate var _url: String?
    
    public var id: String? {
        get { return _id }
        set { _id = newValue }
    }
    
    public var url: String? {
        get { return _url }
        set { _url = newValue }
    }
}
