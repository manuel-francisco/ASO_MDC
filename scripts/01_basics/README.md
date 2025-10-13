# 🧩 Fase 1 — Familiarización y entorno

**Módulo:** Administración de Sistemas Operativos (ASO)  
**Resultado de aprendizaje:** RA7 – Utiliza lenguajes de guiones en sistemas operativos  
**Criterios:**  
a) Uso y combinación de estructuras del lenguaje para crear guiones.  
b) Uso de herramientas para depurar errores sintácticos y de ejecución.

---

## 🎯 Objetivos de aprendizaje

1. Comprender la estructura básica de un script Bash (shebang, permisos, ejecución).  
2. Emplear variables, argumentos, lectura de usuario y salida formateada.  
3. Aplicar herramientas de depuración (`bash -x`, `bash -n`, `set -e`, `set -u`).  
4. Desarrollar autonomía en la creación, ejecución y validación de scripts.  
5. Adoptar buenas prácticas de documentación y control de versiones mediante *branch* y *PR*.

---

## 📚 Ejercicios incluidos

| Nº | Nombre | Conceptos principales | RA7 Criterios |
|----|---------|----------------------|---------------|
| 1 | `01_hello.sh` | Primer script, variables del entorno, ejecución y permisos | a, b |
| 2 | `02_variables.sh` | Declaración y uso de variables, sustitución de comandos | a, b |
| 3 | `03_io.sh` | Lectura de entrada con `read`, salida personalizada | a, b |
| 4 | `04_args.sh` | Argumentos posicionales (`$0`, `$1`, `$2`) | a |
| 5 | `05_args_check.sh` | Validación de argumentos y control de errores | a, b |
| 6 | `06_errors.sh` | Depuración con `set -x`, `-e`, `-u` y corrección de fallos | b |

---

## ⚙️ Validación automática (GitHub Actions)

Cada *pull request* que modifique un archivo en `scripts/01_basics/` activará una comprobación automática para:

- Verificar que el script tiene **shebang**.  
- Comprobar que **no hay errores de sintaxis** (`bash -n`).  
- Validar que el archivo es **ejecutable**.  

Esto garantiza que el código básico sea correcto antes de revisión manual.

---

## 🚀 Entrega de los ejercicios

1. Crear una rama con el nombre indicado en el *issue* (`feature/01-hello-tuusuario`, etc.).  
2. Añadir y hacer *commit* del script correspondiente.  
3. Abrir un *pull request* hacia la rama principal con título y descripción según el modelo.  
4. Esperar la validación automática de GitHub Actions antes de solicitar revisión.

---

## 🧠 Conclusión

Esta fase sienta las bases del trabajo con **Bash scripting** y **GitHub Flow**.  
El dominio de estos ejercicios es esencial para avanzar hacia la **Fase 2**, donde se abordarán las **estructuras de control**, los **bucles**, y el **flujo lógico** de los guiones.