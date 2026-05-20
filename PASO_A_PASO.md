# 🎯 SpiritPet: De cero a app instalada en 10 minutos

> Guía idiotproof. Cada paso tiene exactamente lo que ver, escribir o pulsar.

---

## 🔥 OPCIÓN RÁPIDA: Sin Vercel, sin nada (5 min)

Si solo quieres que tú y unos amigos lo prueben **YA**, sin servidores ni APKs:

1. Coge el archivo `index.html` de esta carpeta
2. Cámbiale el nombre a `SpiritPet.html`
3. **Mándatelo a ti mismo por Telegram, WhatsApp o email**
4. En el móvil, ábrelo desde el chat → se abre en navegador y funciona perfectamente
5. Para "instalar": en Safari iPhone → Compartir → Añadir a Inicio. En Chrome Android → menú ⋮ → Añadir a pantalla de inicio

**✅ Listo. Sin URL, sin APK, sin nada. Pero también: sin actualizaciones automáticas y los amigos pierden su progreso si borran historial.**

---

## 🚀 OPCIÓN PROFESIONAL: URL pública + APK (10-15 min)

### PARTE 1 · Vercel (subir la app a internet)

**1.1** Abre **[vercel.com/signup](https://vercel.com/signup)** en tu navegador

**1.2** Pulsa el botón **"Continue with GitHub"** (más fácil) o **"Continue with Email"**
   - Si eliges email: recibirás un código de verificación
   - Si eliges GitHub: pulsa "Authorize Vercel"

**1.3** Te preguntará "What's your name?" → escribe lo que quieras → **Continue**

**1.4** Te preguntará el plan → elige **"Hobby"** (es el GRATIS, dice $0/month)

**1.5** Ya estás en el dashboard. Pulsa el botón grande **"Add New..."** arriba a la derecha → **"Project"**

**1.6** Verás "Import Git Repository" pero ABAJO hay un texto pequeño:
   > "Want to deploy a folder? Try Vercel CLI or drag-and-drop"
   
   No lo uses todavía. En su lugar, mira la opción de abajo: **"Browse Templates"**. NO necesitas template. 
   
   **➡️ La forma más fácil: instala Vercel CLI**

**1.7** Abre Terminal en tu Mac y escribe:
```bash
npm install -g vercel
```
Pulsa Enter. Esperan ~30 seg.

**1.8** Navega a la carpeta `spiritpet` que tienes descargada:
```bash
cd ~/Downloads/spiritpet
```
(O donde la tengas)

**1.9** Escribe:
```bash
vercel
```

**1.10** Te hará varias preguntas:
   - "Set up and deploy?" → pulsa **Y** y Enter
   - "Which scope?" → elige tu cuenta
   - "Link to existing project?" → **N**
   - "What's your project's name?" → escribe `spiritpet` (o lo que quieras)
   - "In which directory is your code located?" → pulsa Enter (es `./`)
   - "Want to modify settings?" → **N**

**1.11** En 30 segundos te dará una URL tipo:
```
✅ Production: https://spiritpet-xxxxx.vercel.app
```

**👉 COPIA ESA URL. La necesitas para el siguiente paso.**

---

### PARTE 2 · PWABuilder (generar APK Android)

**2.1** Abre **[pwabuilder.com](https://www.pwabuilder.com)**

**2.2** En el centro de la página verás un campo grande de texto. **Pega tu URL de Vercel** ahí.

**2.3** Pulsa el botón **"Start"** (a la derecha del campo).

**2.4** Esperará ~15 seg analizando. Verás puntuaciones:
   - **Manifest**: debería ser verde ✓
   - **Service Worker**: debería ser verde ✓
   - **Security**: debería ser verde ✓

**2.5** Pulsa el botón grande arriba **"Package For Stores"**

**2.6** Verás 3 opciones: Android, iOS, Windows. Pulsa **"Generate"** debajo de Android.

**2.7** Aparecerá un modal grande. Configura:
   - **Package ID**: escribe `com.enclaveparanormal.spiritpet` (o lo que quieras, pero debe seguir formato dominio inverso)
   - **App name**: `SpiritPet`
   - **Launcher name**: `SpiritPet`
   - **App version**: `1.0.0`
   - **App version code**: `1`
   - El resto: déjalo por defecto
   
**2.8** Baja del todo y pulsa **"Download"**.

**2.9** Te descargará un ZIP. Dentro encontrarás:
   - `spiritpet.apk` ← este es el que necesitas
   - Otros archivos (instrucciones, keys, etc.)

**👉 Ya tienes tu APK.**

---

### PARTE 3 · Instalar el APK en tu móvil

**3.1** Pasa el `.apk` a tu móvil. Opciones:
   - **AirDrop** (si tienes Mac e iPhone... wait, iPhone no instala APKs. Para Android usa Telegram a ti mismo, Google Drive, o cable USB)
   - **Telegram a tu propio chat "Mensajes guardados"** (lo más rápido)
   - **Google Drive** → subir desde Mac, abrir desde móvil

**3.2** En tu Android, abre **Ajustes → Seguridad** (o "Aplicaciones" según versión)

**3.3** Busca **"Instalar aplicaciones desconocidas"** o **"Fuentes desconocidas"**

**3.4** Da permiso a Chrome o al gestor de archivos para instalar APKs

**3.5** Abre el archivo `.apk` desde donde lo tengas → **Instalar**

**3.6** Te avisará "Esta app puede ser dañina" → pulsa **"Instalar de todas formas"** (es seguro, lo hiciste tú).

**3.7** ✅ Ya tienes el icono en tu pantalla de inicio. 

---

### PARTE 4 · Para iPhone (sin APK, sin App Store)

iOS no permite instalar APKs. Pero permite instalar PWAs:

**4.1** En el iPhone, abre **Safari** (no Chrome, no Firefox, SAFARI obligatorio)

**4.2** Ve a tu URL de Vercel (la copiaste antes)

**4.3** Espera ~45 seg jugando — automáticamente aparecerá un banner que dice "Instalar SpiritPet" con instrucciones

**4.4** O manualmente: pulsa el botón **Compartir** (cuadrado con flecha hacia arriba)

**4.5** Baja la lista y pulsa **"Añadir a pantalla de inicio"**

**4.6** Pulsa **"Añadir"** arriba a la derecha

**4.7** ✅ Aparece el icono en tu pantalla de inicio. Se comporta como app nativa.

---

## 🎁 BONUS: Compartirlo con tu audiencia

### Mensaje para Stories de Instagram/TikTok

> 👻 **NUEVO**: He creado mi propio compañero paranormal
> 
> Adopta un fantasma, dale nombre, juega minijuegos, decora su sanctum...
> 
> 100% GRATIS, sin login, sin anuncios
> 
> 📱 iPhone: abre el link en Safari
> 🤖 Android: descarga el APK
> 
> Link en la bio 👇

### Texto para descripción de YouTube

> 🔗 SpiritPet (mi nuevo proyecto): [TU URL DE VERCEL]
> 
> 📱 APK Android directo: [LINK A TU GOOGLE DRIVE CON EL APK]
> 
> 🍎 iPhone: abrid el link de arriba en Safari y pulsad "Añadir a pantalla de inicio"
> 
> Es 100% gratis, sin login, funciona offline. Lo hice yo desde cero usando IA y mis tardes libres. Dejad un comentario con el nombre del fantasma que adoptéis 👻

---

## ❌ Si algo va mal

- **"vercel: command not found"** → instala node primero: `brew install node` (en Mac)
- **PWABuilder dice "Manifest not found"** → comprueba que `https://tuurl.vercel.app/manifest.json` se abre directamente. Si no, hay un problema con Vercel — re-deploya.
- **El APK no se instala** → activa "Fuentes desconocidas" en Ajustes de Android
- **En iPhone no funciona offline** → solo funciona offline DESPUÉS de la primera vez que la abres. Es normal.

¿Algún paso te queda confuso? Vuelve al chat y dime exactamente en qué punto estás y qué ves.
