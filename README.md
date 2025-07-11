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

##Ejemplo de vista

###Exito
```markdown
![Image](https://github.com/user-attachments/assets/8890f4cf-e7b7-440d-9ff0-d91691964a37)
```

###Error
```markdown
![Image](https://github.com/user-attachments/assets/72603031-aba1-49c6-9da2-cf120d4c9485)
```

###Advertencia
```markdown
![Image](https://github.com/user-attachments/assets/6ebeec1d-2e21-4593-823a-830bb377abfb)
```

###Información
```markdown
![Image](https://github.com/user-attachments/assets/dbab7469-917d-449c-9848-7127e69fdb3f)
```
---

##Autor
##Danr08
