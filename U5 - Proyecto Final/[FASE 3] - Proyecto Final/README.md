```markdown
# Procesador MIPS 32-bits y Ensamblador Personalizado.

Este repositorio contiene la implementación final de una arquitectura de procesador MIPS de 32 bits desarrollada en Verilog, capaz de ejecutar instrucciones tipo R, I y J mediante un datapath segmentado (pipeline). Además, incluye un decodificador automatizado en Python para traducir código ensamblador MIPS a código máquina.

Proyecto desarrollado para el Centro Universitario de Ciencias Exactas e Ingenierías (CUCEI).

## Características del Proyecto

* **Datapath MIPS en Verilog:** Soporte completo para 28 instrucciones incluyendo saltos incondicionales (J, JAL) y manejo del registro de retorno `$ra`.
* **Pipeline Integrado:** Implementación de buffers de segmentación (IF/ID, ID/EX, EX/MEM, MEM/WB) para sincronización de datos y señales de control.
* **Decodificador MIPS (Python):** Interfaz gráfica construida con Tkinter que procesa archivos `.asm` o `.txt`, calcula direcciones absolutas de 26 bits para saltos y saltos relativos para ramas (branches), y genera archivos `.mem`.
* **Algoritmo de Prueba:** Incluye la implementación de un algoritmo de ordenamiento (Bubble Sort) en ensamblador para validar rutas de datos, lecturas de memoria y bucles.

## Estructura del Repositorio

El proyecto está organizado en las siguientes cuatro áreas principales:

* **`RTL/` (Register Transfer Level):** Contiene todos los módulos de hardware en Verilog (`.v`), incluyendo el Top-Level (`DPTR.v`), la ALU, las Memorias, los buffers de segmentación y los Testbenches.
* **`Src/` (Source):** Código fuente del software. Aquí se encuentra el decodificador automático en Python con interfaz gráfica, así como el algoritmo de prueba escrito en lenguaje Ensamblador.
* **`Docs/` (Documentación):** Reportes técnicos en formato PDF, diagramas de bloques de la arquitectura detallada, tablas de verdad y la presentación final del proyecto.
* **`Img/` (Imágenes):** Evidencias visuales del correcto funcionamiento del procesador. Incluye capturas de pantalla de las formas de onda (Wave) en ModelSim durante la ejecución del algoritmo.

##  Requisitos Previos

* **Simulación de Hardware:** ModelSim o Intel Quartus Prime.
* **Decodificador:** Python 3.8 o superior (la librería `tkinter` viene preinstalada por defecto).

##  Uso del Decodificador

1. Navega a la carpeta `/Src/`.
2. Ejecuta el script: `Decodificador.py`
3. En la interfaz gráfica, selecciona tu código fuente en el Paso 1.
4. En el Paso 2, asigna el nombre y ruta de salida.
5. Haz clic en "Ensamblar Código". El script ignorará directivas, validará la sintaxis y generará el archivo binario listo para inyectarse en la ROM del procesador.

##  Simulación en ModelSim

1. Abre tu proyecto en ModelSim y compila todos los archivos `.v` ubicados dentro de la carpeta `/RTL/`.
2. Asegúrate de que los archivos `.mem` generados por el decodificador estén en el directorio raíz de la simulación para que el simulador los detecte.
3. Ejecuta la simulación sobre el archivo `DPTR_tb.v` (Testbench).
4. Analiza la ventana de `Wave` para observar la propagación del PC, los cambios en el Banco de Registros y las escrituras correctas en la Memoria de Datos.

##  Autores
* Carlos Andrés Rodríguez Pelayo
* Nestor Andrés Rivera Quintana
* Gerardo Josué Morales Sanchéz
* Jared Vera Jaime

```
