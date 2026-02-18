### Instalación de dependencias

```bash
sudo apt install flex gcc make
```

---

## Estructura del proyecto

```
proyecto/
├── vocales/
│   ├── vocales.l
│   ├── entrada.txt
│   └── Makefile
├── mayusculas/
│   ├── mayusculas.l
│   └── Makefile
├── espacios/
│   ├── espacios.l
│   └── Makefile
├── ips/
│   ├── ips.l
│   └── Makefile
├── markdown/
│   ├── markdown.l
│   └── Makefile
└── fechas/
    ├── fechas.l
    └── Makefile
```

---

## Ejercicios

### 1. Contador de Vocales y Consonantes (`vocales/`)

Lee un archivo de texto e imprime el total de vocales y consonantes encontradas. Ignora números y signos de puntuación.

**Entrada:** archivo `entrada.txt`
```
Hello World 123!
```

**Salida esperada:**
```
Vocales: 3
Consonantes: 7
```

**Compilar y ejecutar:**
```bash
cd vocales
make run
```

---

### 2. Detector de Mayúsculas (`mayusculas/`)

Detecta e imprime las palabras que inician con letra mayúscula.

**Entrada (teclado):**
```
Hello World this is a Test
```

**Salida esperada:**
```
Palabra reservada/importante: Hello
Palabra reservada/importante: World
Palabra reservada/importante: Test
```

**Compilar y ejecutar:**
```bash
cd mayusculas
make run
```

> Presiona `Ctrl+D` para terminar la entrada.

---

### 3. Limpiador de Espacios (`espacios/`)

Normaliza múltiples espacios y tabulaciones consecutivas a un solo espacio.

**Entrada (teclado):**
```
Hola     mundo,    como        estas?
```

**Salida esperada:**
```
Hola mundo, como estas?
```

**Compilar y ejecutar:**
```bash
cd espacios
make run
```

> Presiona `Ctrl+D` para terminar la entrada.

---

### 4. Validador de IPs (`ips/`)

Valida si una dirección IP tiene formato correcto y valores lógicos (cada octeto menor a 256).

**Entrada (teclado):**
```
192.168.1.1
999.256.100.1
10.0.0.255
```

**Salida esperada:**
```
IP valida: 192.168.1.1
IP invalida: 999.256.100.1
IP valida: 10.0.0.255
```

**Compilar y ejecutar:**
```bash
cd ips
make run
```

> Presiona `Ctrl+D` para terminar la entrada.

---

### 5. Extractor de Enlaces Markdown (`markdown/`)

Extrae el texto y la URL de enlaces en formato Markdown `[texto](url)`.

**Entrada (teclado):**
```
[Google](https://www.google.com)
[GitHub](https://www.github.com)
```

**Salida esperada:**
```
Texto: Google
URL: https://www.google.com
---
Texto: GitHub
URL: https://www.github.com
---
```

**Compilar y ejecutar:**
```bash
cd markdown
make run
```

> Presiona `Ctrl+D` para terminar la entrada.

---

### 6. Analizador de Fechas (`fechas/`)

Valida fechas en formato `MM/DD/AAAA`, verificando que el mes, día y año sean lógicamente correctos. Incluye soporte para años bisiestos.

**Entrada (teclado):**
```
12/25/2024
02/29/2024
02/29/2023
```

**Salida esperada:**
```
Fecha valida: 12/25/2024
Fecha valida: 02/29/2024
Fecha invalida (dia imposible): 02/29/2023
```

**Compilar y ejecutar:**
```bash
cd fechas
make run
```

> Presiona `Ctrl+D` para terminar la entrada.

---

## Comandos Makefile disponibles

| Comando | Descripción |
|---|---|
| `make` | Compila el proyecto |
| `make run` | Compila y ejecuta |
| `make clean` | Elimina archivos generados |

---

## Tecnologías utilizadas

- **Flex** — generador de analizadores léxicos
- **C** — lenguaje de las acciones y función principal
- **Make** — automatización de compilación
