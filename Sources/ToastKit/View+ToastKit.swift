//
//  View+ToastKit.swift
//  ToastKit
//
//  Created by Daniel Rodriguez on 10/7/25.
//


import SwiftUI

//Para realizar integraciones de manera sencilla
public extension View {
    func withToast() -> some View {
        ZStack {
            self
            ToastView()
        }
    }
    func showToast(message: String, type: ToastType, duration: TimeInterval = 2.5) {
        let toast = ToastData(message: message, duration: duration, type: type)
        ToastManager.shared.showToast(toast)
    }
}
