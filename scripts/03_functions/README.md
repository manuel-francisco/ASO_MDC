# 🧩 Fase 3 — Funciones y modularidad

**Módulo:** Administración de Sistemas Operativos (ASO)  
**Resultado de aprendizaje:** RA7 – Utiliza lenguajes de guiones en sistemas operativos  
**Criterios de evaluación:**  
a) Se han utilizado y combinado las estructuras del lenguaje para crear guiones.  
b) Se han utilizado herramientas para depurar errores sintácticos y de ejecución.  
h) Se han consultado y utilizado librerías de funciones.  
i) Se han documentado los guiones creados.

---

## 🎯 Objetivos de aprendizaje

1. Definir funciones en Bash y comprender su flujo de ejecución.  
2. Pasar parámetros y recibir valores de retorno desde funciones.  
3. Modularizar scripts en bloques funcionales reutilizables.  
4. Aplicar la reutilización de código mediante librerías (`source`).  
5. Documentar el código de forma clara, legible y mantenible.  

---

## 📚 Ejercicios incluidos

| Nº | Script principal | Descripción | Criterios RA7 |
|----|------------------|--------------|----------------|
| 1 | `01_simple_function.sh` | Define e invoca una función simple que muestra un saludo | a, b |
| 2 | `02_parameters.sh` | Función con parámetros y argumentos dinámicos | a, b |
| 3 | `03_return_values.sh` | Uso de `return` y `$?` para devolver y evaluar códigos de salida | a, b |
| 4 | `04_system_tools.sh` | Múltiples funciones organizadas en un menú modular | a, b, i |
| 5 | `05_library.sh` + `05_main.sh` | Separación de funciones en librería externa mediante `source` | a, b, h, i |

---

## 🧰 Recursos y comandos útiles

- `function`, `return`, `source`, `.`, `export`, `$?`, `$#`, `$@`  
- `df`, `whoami`, `date`, `bash -n`, `bash -x`  
- Control de flujo: `if`, `case`, `while`, `for`  

---

## ✅ Evaluación de la fase

El alumnado deberá demostrar que:

- Define y llama funciones correctamente.  
- Usa parámetros, valores de retorno y librerías externas.  
- Documenta el código con comentarios adecuados.  
- No presenta errores de sintaxis (`bash -n`).  
- Organiza los scripts de forma modular y legible.  
- Entrega cada ejercicio mediante *branch* y *pull request*.

---

## ⚙️ Validación automática (GitHub Actions)

Cada *pull request* que modifique archivos dentro de `scripts/03_functions/` activará una comprobación automática:

- Verificación del **shebang** (`#!/bin/bash`).  
- Validación de **sintaxis** (`bash -n`).  
- Comprobación de **permisos de ejecución**.  

---

## 🚀 Flujo de trabajo del estudiante

1. Crear una rama con el nombre del ejercicio (`feature/03-return-values-tuusuario`).  
2. Añadir el script correspondiente en la ruta indicada.  
3. Hacer *commit* y *push*.  
4. Crear un *Pull Request* hacia la rama principal.  
5. Esperar la validación automática antes de solicitar revisión.  

---

## 🧠 Conclusión

Esta fase consolida el pensamiento estructurado en Bash:  
> “**divide y vencerás**”.  

El estudiante pasa de escribir scripts lineales a **diseñar herramientas modulares y reutilizables**, sentando las bases para la **automatización avanzada de sistemas (Fase 4)**.
