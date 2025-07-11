//
//  ToastManager.swift
//  ToastKit
//
//  Created by Daniel Rodriguez on 10/7/25.
//

import Foundation
import Combine

//Se utiliza el MainActor para actualizar la UI y el ObservableObject para que SwiftUI observe sus cambios y actualice la vista
@MainActor
//Singleton
public final class ToastManager: ObservableObject {
    @Published public var currentToast : ToastData?
    public static let shared = ToastManager()
    
    public init() {
        
    }
    public func showToast(_ toast: ToastData) {
        currentToast = toast
        Task {
            try? await Task.sleep(nanoseconds: UInt64(toast.duration * 1_000_000_000))
            if currentToast == toast{
                currentToast = nil
            }
        }
    }
}
