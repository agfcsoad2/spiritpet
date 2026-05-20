# 👻 SpiritPet

> Tu compañero virtual del más allá. Tamagochi paranormal de fácil acceso para quienes quieren compañía sin compromiso.

![SpiritPet](icon-512.png)

## ✨ Características

- **Fantasma adoptable** con personalidad, evolución por edad (4 etapas) y ciclo día/noche real
- **5 mini-juegos**: Mini-Pong, Memoria, Caza-orbes, Tarot y Reflejos (dificultad progresiva)
- **5 comidas espectrales** + sistema de caca/limpieza
- **Tienda etérea**: 9 sombreros, 6 auras, 6 fondos, 8 muebles, 6 decoraciones, 4 productos de limpieza
- **Animaciones emocionales** completas (feliz, triste, enamorado, sorpresa, enfado)
- **Notificaciones** del navegador cuando el espíritu te necesita
- **PWA instalable** en Android, iOS, Windows, Mac, Linux
- **Funciona offline** (service worker)
- **Sin login** — progreso guardado en el dispositivo

## 🚀 Cómo publicar

Lee [`COMO_PUBLICAR.md`](./COMO_PUBLICAR.md) — guía paso a paso para desplegar en Vercel (gratis) y convertir a APK Android sin pagar nada.

## 📁 Estructura

```
spiritpet/
├── index.html              # App completa
├── manifest.json           # PWA manifest
├── sw.js                   # Service worker (offline)
├── vercel.json            # Config Vercel
├── icon-192.png           # Icono normal 192x192
├── icon-512.png           # Icono normal 512x512
├── icon-192-maskable.png  # Icono maskable Android
├── icon-512-maskable.png  # Icono maskable Android
├── COMO_PUBLICAR.md       # Guía de distribución
└── README.md              # Este archivo
```

## 🛠 Probar localmente

```bash
# Cualquiera de estos:
python3 -m http.server 8000
npx serve .
# Luego abre http://localhost:8000
```

## 🧪 Comandos en consola del navegador

```js
// Exportar progreso (guarda JSON)
spiritpetExport()

// Importar progreso desde JSON
spiritpetImport(jsonString)
```

## 📜 Licencia

Creado para Angel · Enclave Paranormal ⚱
