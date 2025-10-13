## 🧱 1️⃣ Template para Pull Requests

**📂 Ruta:**

```
.github/pull_request_template.md
```

**📄 Contenido:**

## 🚀 Entrega de ejercicio

**Ruta del script:**  
<!-- Ejemplo: scripts/02_flow_control/03_case_menu.sh -->

---

### 🧠 Descripción del trabajo realizado
Explica brevemente qué hace tu script, qué comandos utilizaste y qué problemas encontraste.

> Ejemplo:
> He creado un menú con `case` que permite mostrar la fecha, el usuario o salir del programa.
> Tuve un error con la sintaxis de `esac` que corregí tras probar con `bash -n`.

---

### 🧪 Evidencias de ejecución
Copia aquí la salida real del script (recortada si es larga). Ejemplo:

```

$ ./03_case_menu.sh

1. Mostrar fecha actual
2. Mostrar usuario actual
3. Salir
   Selecciona una opción > 1
   Fecha actual: Tue Oct 13 10:22:44 CEST 2025

```

---

### 🧩 Validaciones realizadas
- [x] Comprobado con `bash -n` (sin errores).  
- [x] Ejecutado con `bash -x` para depurar.  
- [x] Estructura del código comentada y legible.  

---

### 🐛 Errores encontrados y soluciones
Describe los errores que hayas tenido y cómo los solucionaste.

> Ejemplo:
> Olvidé cerrar el `fi` y el script no se ejecutaba. Lo solucioné tras comprobar con `bash -n`.

---

### 🗂️ Checklist final
- [ ] La rama se llama `feature/xx-nombre-tuusuario`.  
- [ ] El PR tiene título correcto (ej. “F2E3 – Menú con case [tuusuario]”).
- [ ] El PR fusiona hacia la rama rama roadmap/bash-tuusuario como
- [ ] Solo se han modificado los archivos del ejercicio correspondiente.  
- [ ] El script se ejecuta correctamente y cumple los criterios RA7.  