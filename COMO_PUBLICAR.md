# 🚀 Guía completa para publicar SpiritPet

**Para Angel — plan lean startup, 0€ de inversión inicial**

---

## Paso 1: Subir la app a internet (10 min, gratis)

Necesitas que esté accesible por una URL pública. Usaremos **Vercel** (gratis para siempre, sin tarjeta).

### Opción A: Sin GitHub (la más rápida)

1. Crea cuenta en [vercel.com](https://vercel.com) (con tu email)
2. En el dashboard → **Add New → Project**
3. Pulsa **Browse all templates → Other**, o directamente arrastra esta carpeta (`spiritpet/`) al área de drag-and-drop
4. Pon nombre: `spiritpet` → **Deploy**
5. En 30 segundos tendrás una URL tipo `https://spiritpet-xxx.vercel.app`

### Opción B: Con GitHub (recomendada si vas a actualizar)

1. Crea repo en GitHub llamado `spiritpet`
2. Sube todos los archivos de la carpeta `spiritpet/` a la raíz del repo
3. En Vercel → **Import Project** → conecta tu repo
4. Cualquier `git push` actualiza la app automáticamente

**✅ Anota la URL de Vercel — la usaremos en todos los pasos siguientes.**

---

## Paso 2: Convertir a APK Android (15 min, gratis)

1. Entra en [pwabuilder.com](https://www.pwabuilder.com)
2. Pega la URL de Vercel y pulsa **Start**
3. PWABuilder analizará tu PWA — debería darte buena puntuación (manifest ✓, service worker ✓, iconos ✓)
4. Pulsa **Package For Stores → Android**
5. Elige **Sign-In options**:
   - Para uso personal/tu canal: marca **"Test Package"** (más rápido, gratis)
   - Para Play Store: marca **"Production Package"** (firmado correctamente)
6. Descarga el `.apk` (test) o `.aab` (production)

### Instalar el APK en tu Android (sin Play Store)

1. Abre **Ajustes → Seguridad → Fuentes desconocidas** (activar)
2. Pasa el `.apk` a tu móvil (email, Telegram, Drive...)
3. Ábrelo desde el archivo → **Instalar**
4. ¡Ya está en tu pantalla de inicio!

### Compartirlo (sin Google Play)

- **Telegram/WhatsApp**: comparte el archivo `.apk` directamente
- **APKPure / APKMirror**: plataformas alternativas gratis (revisión de 1-2 días)
- **Tu canal Enclave Paranormal**: link de descarga directo desde Vercel

---

## Paso 3: iOS sin App Store (PWA instalable, 0 min)

**Buena noticia:** iOS permite instalar PWAs como apps SIN App Store. No necesitas pagar los 99€/año hasta que escales.

### Para tus seguidores (instrucciones para compartir):

1. Abrir la URL de Vercel **en Safari** (Chrome NO funciona para esto en iOS)
2. Pulsar el botón **Compartir** (cuadrado con flecha hacia arriba)
3. Bajar y pulsar **"Añadir a pantalla de inicio"**
4. ✅ Aparece el icono como cualquier otra app

Funciona offline, ocupa lo mismo, no hay diferencia visible vs una app del App Store.

**Ya añadí un banner que aparece automáticamente** después de 45 segundos a usuarios de iPhone explicándoles cómo hacerlo.

---

## Paso 4: Cuándo escalar a las tiendas oficiales

**No pagues NADA hasta que cumplas estos criterios:**

### Google Play Store (25 USD único)
Paga cuando:
- Tengas 500+ descargas vía sideload/Telegram
- La gente te pida que esté en Play Store
- Quieras monetizar (anuncios, in-app purchases)

### Apple App Store (99 USD/año)
Paga cuando:
- Tengas 1000+ usuarios iOS demostrados
- O quieras añadir Apple Sign-In
- O quieras notificaciones push en iOS

---

## 📣 Plan de lanzamiento con Enclave Paranormal

Aquí tu canal es tu **mayor ventaja competitiva**. Plan en 4 semanas:

### Semana 1: Teaser
- **Short/Reel**: "He creado mi propio compañero paranormal... está casi listo 👻"
- Muestras gameplay de 15 segundos sin revelar el nombre
- **CTA**: "Comenta 👻 para enterarte cuando salga"

### Semana 2: Reveal
- **Video largo**: tutorial completo + storytelling de por qué lo creaste
- Conecta con tu lore de Enclave Paranormal
- **Link en descripción**: URL de Vercel + cómo instalarlo Android/iOS

### Semana 3: Comunidad
- **Pide screenshots** de los fantasmas de tu audiencia
- Recopila feedback: qué falta, qué les gusta
- **Update**: implementa lo más pedido (yo te ayudo)

### Semana 4: Viral push
- **TikTok/Reel**: "Mira lo que la gente ha hecho con SpiritPet" (compilación)
- Colaboración con otros creators paranormales españoles
- **Reto**: "#MiSpiritPet" → fantasma más raro/decorado

---

## 🔧 Cómo actualizar la app después

Si usas Vercel + GitHub: simplemente haces `git push` y todos los usuarios reciben la actualización en su próxima apertura (gracias al service worker).

Si usaste Vercel sin GitHub: arrastras la carpeta nueva al dashboard de Vercel → Redeploy.

**Importante**: el progreso de los usuarios se guarda en su dispositivo (localStorage), así que las actualizaciones NO borran fantasmas. Solo cambian el código.

---

## ❓ Problemas comunes

**"PWABuilder me dice que falta algo"**: revisa que todos los archivos estén en Vercel. La URL debe servir el `manifest.json` correctamente. Comprueba abriendo `https://tuurl.vercel.app/manifest.json` directamente en el navegador.

**"En iOS no aparece el banner de instalar"**: solo aparece en Safari, no en Chrome iOS. Y si ya está instalada, no se muestra.

**"El service worker no carga"**: PWABuilder a veces se queja si la URL no usa HTTPS. Vercel te da HTTPS automático, así que esto no debería pasar.

**"¿Y los datos de los usuarios?"**: se guardan en su navegador (localStorage). Si desinstalan, se pierden. Por eso ya añadí `spiritpetExport()` en la consola para que ellos puedan guardar backup si quieren.

---

## 💡 Próximos pasos cuando funcione

Cuando tengas tracción suficiente, me dices y construimos:

1. **Login con Google** (gratis hasta 50k usuarios con Firebase)
2. **Sincronización entre dispositivos** (mismo fantasma en iPhone y PC)
3. **Ranking global** (top 100 fantasmas más antiguos)
4. **Sistema de amistades** (visita el sanctum de tus amigos)
5. **Monetización opcional**: anuncios paranormales sutiles + tienda de cosméticos premium

---

Hecho para Angel · Enclave Paranormal ⚱
