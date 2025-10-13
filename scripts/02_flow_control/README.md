# 🔄 Fase 2 — Estructuras de control

**Módulo:** Administración de Sistemas Operativos (ASO)  
**Resultado de aprendizaje:** RA7 – Utiliza lenguajes de guiones en sistemas operativos  
**Criterios de evaluación:**  
a) Se han utilizado y combinado las estructuras del lenguaje para crear guiones.  
b) Se han utilizado herramientas para depurar errores sintácticos y de ejecución.  

---

## 🎯 Objetivos de aprendizaje

1. Utilizar estructuras condicionales (`if`, `elif`, `else`, `case`) para la toma de decisiones.  
2. Emplear bucles (`for`, `while`) para repetir operaciones controladas.  
3. Combinar decisiones y bucles para crear menús y automatizaciones simples.  
4. Aplicar herramientas de depuración (`bash -n`, `bash -x`) y buenas prácticas de formato.  
5. Preparar scripts que resuelvan problemas reales de administración del sistema.

---

## 📚 Ejercicios incluidos

| Nº | Script | Descripción | Criterios RA7 |
|----|---------|--------------|---------------|
| 1 | `01_if_else.sh` | Condicional simple para comparar un número con 10 | a, b |
| 2 | `02_elif.sh` | Condicional múltiple (`if` / `elif` / `else`) para clasificar notas | a, b |
| 3 | `03_case_menu.sh` | Menú interactivo simple con `case` | a, b |
| 4 | `04_menu_loop.sh` | Menú repetitivo con `while` y `case` hasta salir | a, b |
| 5 | `05_for_files.sh` | Bucle `for` que recorre los archivos del directorio actual | a, b |
| 6 | `06_while_counter.sh` | Bucle `while` que cuenta del 1 al N con pausa | a, b |

---

## 🧰 Recursos y comandos útiles

- Estructuras: `if`, `elif`, `else`, `case`, `for`, `while`, `break`, `continue`.  
- Comparadores: `-lt`, `-gt`, `-le`, `-ge`, `-eq`.  
- Herramientas: `read`, `sleep`, `echo`, `pwd`, `whoami`, `date`.  
- Depuración: `bash -n`, `bash -x`.

---

## ✅ Evaluación de la fase

El alumnado deberá:

- Utilizar correctamente las estructuras de control en cada script.  
- Aplicar comentarios explicativos en todo el código.  
- Evitar errores de sintaxis (`bash -n` sin errores).  
- Presentar scripts ejecutables y funcionales.  
- Entregar cada ejercicio mediante su propio *branch* y *pull request*.

---

## ⚙️ Validación automática (GitHub Actions)

Cada *pull request* que modifique archivos dentro de `scripts/02_flow_control/` activará una comprobación automática:

- Verificación de **shebang** (`#!/bin/bash`).  
- Comprobación de **permisos de ejecución**.  
- Validación de **sintaxis** con `bash -n`.

---

## 🚀 Flujo de trabajo del estudiante

1. Crear una rama con el nombre del ejercicio (`feature/02-elif-tuusuario`).  
2. Añadir el script en la ruta correspondiente.  
3. Realizar *commit* y *push* al repositorio.  
4. Crear un *Pull Request* con título y descripción adecuados.  
5. Esperar la validación automática antes de solicitar revisión.

---

## 🧠 Conclusión

Esta fase enseña a **controlar el flujo de ejecución de los guiones Bash**, base de toda automatización en sistemas operativos.  
Los estudiantes que completen con éxito esta fase estarán preparados para la **Fase 3**, dedicada a **funciones, modularidad y reutilización de código**.
