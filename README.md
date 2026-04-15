# 🤖 Robot Autónomo para Laberinto — FPGA DE0-Nano

## 📌 Descripción General

Este repositorio contiene la implementación completa de un **sistema de control digital en VHDL** para un robot autónomo tipo *Micromouse*. El sistema está diseñado para ejecutarse en una FPGA **Altera DE0-Nano (Cyclone IV)**, permitiendo que el robot navegue y resuelva un laberinto de 4x4 casilleros en tiempo real.

A diferencia de las soluciones tradicionales basadas en microcontroladores, este diseño aprovecha el **paralelismo inherente de las FPGAs**. Cada celda del laberinto se implementa como un módulo VHDL independiente que se comunica con sus vecinos, permitiendo una propagación en tiempo real de los datos de distancia y paredes.

El proyecto fue desarrollado como parte de la materia **Técnicas y Dispositivos Digitales II** (3er año de Ingeniería Electrónica) en la **Universidad Nacional de Mar del Plata**.

---

## ✨ Características Principales

- **Algoritmo Flood Fill en Hardware**: Implementación del algoritmo de búsqueda de caminos completamente en VHDL, aprovechando el paralelismo de la FPGA.
- **Arquitectura Paralela Distribuida**: Utiliza 16 módulos de celda interconectados, lo que hace que el sistema sea fácilmente escalable a laberintos de mayor tamaño (ej. 16x16).
- **Detección y Mapeo en Tiempo Real**: Lee los sensores del robot para detectar paredes y actualiza el mapa interno al instante.
- **Control de Movimiento Suave**: Incluye un sistema de corrección de trayectoria basado en sensores laterales para un desplazamiento preciso.
- **Totalmente Autónomo**: Una vez iniciado, el robot explora, mapea y resuelve el laberinto sin intervención externa.

---

## 🧠 Arquitectura del Sistema

El sistema se divide en los siguientes bloques implementados en VHDL:

### Control General (`controlgeneralversion3`)
Núcleo del algoritmo Flood Fill. Mantiene un array de 16 posiciones representando el laberinto 4x4. Cada posición almacena en 8 bits:
- **Bits [7:4]**: Peso/distancia a la salida.
- **Bits [3:0]**: Paredes detectadas (Norte, Este, Sur, Oeste).

En cada ciclo de clock recalcula los pesos de todos los casilleros como el mínimo de sus vecinos accesibles + 1. La salida expone los pesos de los 4 vecinos del casillero actual.

### Toma de Decisión (`decision`)
Recibe los pesos de los 4 vecinos y la orientación actual del robot. Selecciona el vecino de menor peso y genera las señales de giro (`GI`/`GD`) y avance (`ea`) necesarias para orientarse hacia él.

### Control de Movimiento (`control`)
Máquina de estados que ejecuta los movimientos: avance en línea recta, giro izquierda y giro derecha. Gestiona la habilitación de motores y el conteo de pasos para los giros de 90°.

### Bloque ADC (`Bloque_ADC_controller`)
Realiza la lectura de los sensores laterales analógicos mediante el ADC de 12 bits de la FPGA. Compara los valores con un umbral para detectar paredes laterales y corregir la trayectoria en línea recta.

### Ubicación (`ubicacionparte2v2`)
Rastrea la posición actual del robot en el laberinto (0-15) en función de los giros realizados y los cruces de línea detectados.

### Contador de Cuadrícula (`contador_de_cuadriculas`)
Detecta el cruce de líneas del suelo mediante un sensor digital para determinar cuándo el robot ha avanzado un casillero completo.

---

## 🔩 Componentes de Hardware

- **FPGA**: Altera DE0-Nano (Cyclone IV EP4CE22F17C6N).
- **Driver de Motores**: L298N para controlar dos motores DC.
- **Sensores**:
  - 1 sensor digital frontal para detección de obstáculos.
  - 2 sensores analógicos laterales (IR) para seguimiento de paredes.
  - 1 sensor digital de línea para detección de la cuadrícula.
- **ADC**: Convertidor analógico-digital de 12 bits integrado en la FPGA.
- **PLL**: Módulo interno de la FPGA para la generación y gestión de las señales de clock.

---

## 🛠️ Herramientas de Desarrollo

- **IDE**: Quartus II 13.0 (o versión superior).
- **Lenguaje**: VHDL.
- **Simulación**: Archivos Vector Waveform File (`.vwf`) para la verificación funcional de los módulos.
