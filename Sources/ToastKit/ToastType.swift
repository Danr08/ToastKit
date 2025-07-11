//
//  ToastType.swift
//  ToastKit
//
//  Created by Daniel Rodriguez on 10/7/25.
//

import SwiftUI

@available(iOS 14.0, *)
public enum ToastType{
    case success
    case error
    case warning
    case info
    
    public var backgroundColor: Color {
        switch self {
        case .success:
            return .green
        case .error:
            return .red
        case .warning:
            return .yellow
        case .info:
            return .blue
        }
    }
    
    public var icon: String {
        switch self {
        case .success:
            return "checkmark.circle.fill"
        case .error:
            return "exclamationmark.triangle.fill"
        case .warning:
            return "exclamationmark.circle.fill"
        case .info:
            return "info.circle.fill"
        }
    }
    
    
    
}
