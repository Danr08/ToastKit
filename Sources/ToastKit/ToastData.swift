//
//  ToastData.swift
//  ToastKit
//
//  Created by Daniel Rodriguez on 10/7/25.
//

import Foundation

public struct ToastData {
    public let id = UUID()
    public let message: String
    public let duration: TimeInterval
    public let type: ToastType
    
    public init(message: String, duration: TimeInterval = 3.5, type: ToastType) {
        self.message = message
        self.duration = duration
        self.type = type
    }
}
