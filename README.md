# ToastKit

**ToastKit** es un framework ligero y elegante para mostrar mensajes tipo *toast* en aplicaciones iOS usando SwiftUI. Ideal para mostrar alertas de éxito, error, advertencias o información sin interrumpir al usuario.

---

## Características

- Compatible con **SwiftUI**
- Transiciones suaves y automáticas
- Colores e íconos personalizados por tipo
- Fácil integración con una sola línea
- Integración lista con **Swift Package Manager**

---

## Instalación

### Swift Package Manager (SPM)

1. En Xcode, ve a:  
   `File > Add Packages...`

2. Pega la siguiente URL:
    https://github.com/Danr08/ToastKit.git

3. Selecciona la versión y agrégalo a tu proyecto.

---

## Uso básico

### 1. Importa el framework

```swift
import ToastKit
```

### 2. Aplica el modificador .withToast() a tu vista

```swift
struct ContentView: View {
    var body: some View {
        VStack {
            Button(\"Mostrar Éxito\") {
                showToast(message: \"Guardado correctamente\", type: .success)
            }
        }
        .withToast()
    }
}
```

---

## Tipos disponibles (ToastType)
        - .success
        
        - .error
        
        - .warning
        
        - .info

---

## Ejemplo de vista

### Exito

<img width="1206" height="372" alt="Image" src="https://github.com/user-attachments/assets/e11350b2-bdd3-4c69-9dc4-015f18806728" />

### Advertencia

<img width="1206" height="372" alt="Image" src="https://github.com/user-attachments/assets/312d7507-a2ed-411a-b9b2-8edc6a2347e6" />

### Error

<img width="1206" height="368" alt="Image" src="https://github.com/user-attachments/assets/c40e6876-9e81-44c9-9059-f260674ab72e" />

### Información

<img width="1206" height="366" alt="Image" src="https://github.com/user-attachments/assets/cf49f73a-759a-4e33-a6a2-6376ea3f1200" />

---

## Autor
Danr08
