//
//  ToastView.swift
//  ToastKit
//
//  Created by Daniel Rodriguez on 10/7/25.
//

import SwiftUI

public struct ToastView: View {
    @ObservedObject private var manager = ToastManager.shared

    public init() {}

//Vista
    public var body: some View {
        if let toast = manager.currentToast {
            VStack {
                HStack(alignment: .center, spacing: 12) {
                    Image(systemName: toast.type.icon)
                        .foregroundColor(.white)
                    Text(toast.message)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                }
                .padding()
                .background(toast.type.backgroundColor)
                .cornerRadius(12)
                .padding(.horizontal)
                .shadow(radius: 6)
                Spacer()
            }
            .transition(.move(edge: .top).combined(with: .opacity))
            .animation(.easeInOut, value: toast.id)
        }
    }
}
