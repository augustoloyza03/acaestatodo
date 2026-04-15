# Robot Autónomo para Laberinto — FPGA 

## Descripción
Sistema de control digital implementado en VHDL sobre FPGA DE0-Nano para 
un robot autónomo capaz de navegar y resolver un laberinto de 4x4 casilleros. 
El robot opera en tiempo real: en cada casillero lee los sensores, actualiza 
el mapa de distancias y decide el próximo movimiento.

Proyecto desarrollado para la materia Técnicas y Dispositivos Digitales II — 
Universidad Nacional de Mar del Plata (2024).

## Funcionamiento
El sistema opera casillero a casillero:
1. El robot detecta las paredes de su casilla actual mediante sensores
2. Actualiza el mapa interno de distancias usando el algoritmo Flood Fill
3. Compara los pesos de los casilleros vecinos accesibles
4. Decide el movimiento óptimo hacia el casillero de menor peso
5. Ejecuta el desplazamiento o giro necesario

## Arquitectura del sistema
El sistema se divide en los siguientes bloques implementados en VHDL:

### Control General (controlgeneralversion3)
Núcleo del algoritmo Flood Fill. Mantiene un array de 16 posiciones 
representando el laberinto 4x4. Cada posición almacena en 8 bits:
- Bits [7:4]: peso/distancia a la salida
- Bits [3:0]: paredes detectadas (Norte, Este, Sur, Oeste)

En cada ciclo de clock recalcula los pesos de todos los casilleros 
como el mínimo de sus vecinos accesibles + 1. La salida expone los 
pesos de los 4 vecinos del casillero actual.

### Toma de Decisión (decision)
Recibe los pesos de los 4 vecinos y la orientación actual del robot. 
Selecciona el vecino de menor peso y genera las señales de giro 
(GI/GD) y avance (ea) necesarias para orientarse hacia él.

### Control de Movimiento (control)
Máquina de estados que ejecuta los movimientos: avance en línea recta, 
giro izquierda y giro derecha. Gestiona la habilitación de motores 
y el conteo de pasos para los giros de 90°.

### Bloque ADC (Bloque_ADC_controller)
Lectura de los sensores laterales analógicos mediante el ADC de 12 bits 
de la FPGA. Compara con un umbral para detectar paredes laterales y 
corregir la trayectoria en línea recta.

### Ubicación (ubicacionparte2v2)
Rastrea la posición actual del robot en el laberinto (0-15) en función 
de los giros realizados y los cruces de línea detectados.

### Contador de Cuadrícula (contador_de_cuadriculas)
Detecta el cruce de líneas del suelo mediante sensor digital para 
determinar cuándo el robot avanzó un casillero completo.

## Hardware
- FPGA DE0-Nano (Altera Cyclone IV)
- Driver de motores L298N
- 2 sensores analógicos laterales (detección de paredes, ADC 12 bits)
- 1 sensor digital frontal (detección de obstáculo)
- 1 sensor digital de línea (detección de cuadrícula)
- PLL interno de la FPGA para generación de clock

## Herramientas
- Quartus II 13.0
- VHDL / Verilog

## Autores
Sebastián Garré — Augusto Loyza
