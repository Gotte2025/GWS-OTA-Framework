# 🚀 GWS OTA Framework

![ESP8266](https://img.shields.io/badge/ESP8266-Supported-blue)
![ESP32](https://img.shields.io/badge/ESP32-Planned-green)
![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-Automatic-success)
![OTA](https://img.shields.io/badge/OTA-Ready-orange)
![License](https://img.shields.io/badge/License-MIT-yellow)

## 📌 Descripción

**GWS OTA Framework** es un framework Open Source para automatizar la compilación y distribución de firmware para placas ESP8266 (y próximamente ESP32).

Su objetivo es eliminar la necesidad de utilizar Arduino IDE para generar los archivos BIN y permitir que GitHub Actions compile automáticamente cada proyecto.

Ideal para:

- Domótica
- IoT
- Estaciones meteorológicas
- Automatización Industrial
- Sensores remotos
- Proyectos educativos

---

# ✨ Características

✔ Compilación automática mediante GitHub Actions

✔ Generación automática de firmware.bin

✔ Compatible con ESP8266

✔ Arquitectura preparada para ESP32

✔ OTA por Internet

✔ SHA256 automático

✔ Manifest JSON

✔ Versionado del firmware

✔ Framework multi-proyecto

✔ Sin necesidad de Arduino IDE para generar el BIN

---

# 📁 Estructura

```
GWS_OTA_Framework/

│
├── .github/
│   └── workflows/
│       └── build.yml
│
├── config/
│
├── docs/
│
├── output/
│   ├── firmware.bin
│   ├── firmware.sha256
│   └── project.txt
│
├── projects/
│   └── WeatherHouse/
│       ├── WeatherHouse.ino
│       ├── board.txt
│       ├── libraries.txt
│       ├── secrets.h
│       └── version.txt
│
├── templates/
│
├── tools/
│
├── GWS_Menu.bat
│
└── README.md
```

---

# ⚙ Funcionamiento

```
Modificar el proyecto

↓

git add .

↓

git commit

↓

git push

↓

GitHub Actions

↓

Compilación automática

↓

firmware.bin

↓

OTA
```

---

# 🚀 Primer uso

## Clonar el repositorio

```
git clone https://github.com/Gotte2025/GWS-OTA-Framework.git
```

---

## Crear un proyecto

Dentro de:

```
projects/
```

crear una carpeta:

```
MiProyecto
```

copiar:

```
MiProyecto.ino
```

agregar:

```
board.txt
```

ejemplo

```
esp8266:esp8266:d1_mini
```

agregar:

```
libraries.txt
```

Ejemplo

```
ThingSpeak
ArduinoJson
DHT sensor library
Adafruit Unified Sensor
```

---

## Seleccionar el proyecto

Editar

```
output/project.txt
```

Ejemplo

```
MiProyecto
```

---

## Compilar

```
git add .

git commit -m "Nueva versión"

git push
```

GitHub compilará automáticamente el firmware.

---

# OTA

El firmware generado puede descargarse desde GitHub Actions.

Próximamente también podrá publicarse automáticamente mediante GitHub Releases para actualizaciones OTA remotas.

---

# Requisitos

- Git
- Cuenta de GitHub
- GitHub Actions
- Arduino CLI (instalado automáticamente)

No es necesario tener Arduino IDE instalado para generar el firmware.

---

# Roadmap

## Versión 1

- [x] Compilación automática
- [x] Firmware BIN
- [x] SHA256
- [x] GitHub Actions

## Versión 2

- [ ] GitHub Releases automáticos
- [ ] version.json
- [ ] manifest.json
- [ ] OTA automático

## Versión 3

- [ ] Detección automática del .ino
- [ ] Instalación automática de librerías
- [ ] Detección automática de la placa

## Versión 4

- [ ] Compatibilidad ESP32
- [ ] Múltiples placas
- [ ] Compilación paralela

---

# Contribuciones

Las contribuciones son bienvenidas.

Puedes colaborar mediante:

- Pull Requests
- Reporte de errores
- Nuevas funcionalidades
- Optimización del Framework

---

# Autor

**Lucas José Gotte**

Grey Wolf Solutions

Argentina 🇦🇷

---

# Licencia

MIT License

---

# ⭐ Si este proyecto te resulta útil...

¡No olvides dejar una estrella en GitHub!

Eso ayuda a que más personas puedan descubrir el proyecto y colaborar con su desarrollo.