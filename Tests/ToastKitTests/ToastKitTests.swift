// ToastKitTests.swift
import XCTest
@testable import ToastKit

final class ToastKitTests: XCTestCase {

    //Prueba unitaria 1: Verifica que dos ToastData con el mismo contenido sean iguales
    func testToastDataEquality() {
        let toast1 = ToastData(message: "Test", duration: 2.5, type: .success)
        let toast2 = toast1

        XCTAssertEqual(toast1, toast2)
    }

    //Prueba unitaria 2: Verifica que el toast aparece y se oculta luego de su duración
    @MainActor
    func testToastManagerShowsToast() async throws {
        let toast = ToastData(message: "Toast test", duration: 1.0, type: .info)
        let manager = ToastManager.shared

        manager.showToast(toast)
        XCTAssertEqual(manager.currentToast, toast)

        // Esperamos que desaparezca luego del tiempo indicado
        try await Task.sleep(nanoseconds: 1_200_000_000)
        XCTAssertNil(manager.currentToast)
    }
}
