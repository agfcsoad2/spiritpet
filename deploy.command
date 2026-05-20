#!/bin/bash

# SpiritPet Auto-Deploy Script
# Hace todo lo automatizable desde tu Mac

set -e
cd "$(dirname "$0")"

echo ""
echo "  ╔════════════════════════════════════════╗"
echo "  ║       👻 SpiritPet Auto-Deploy 👻      ║"
echo "  ╚════════════════════════════════════════╝"
echo ""

# Check Node
if ! command -v node &> /dev/null; then
    echo "⚠️  No tienes Node.js instalado."
    echo ""
    echo "Instálalo con uno de estos métodos:"
    echo "  Opción 1 (Homebrew): brew install node"
    echo "  Opción 2 (descarga): https://nodejs.org"
    echo ""
    read -p "Pulsa Enter después de instalar Node..."
fi

echo "✅ Node.js detectado: $(node --version)"
echo ""

# Check/install Vercel CLI
if ! command -v vercel &> /dev/null; then
    echo "📦 Instalando Vercel CLI..."
    npm install -g vercel
fi

echo "✅ Vercel CLI listo"
echo ""

# Run local test first
echo "🧪 ¿Quieres probar la app localmente antes de subirla? (recomendado)"
read -p "   [s/n]: " test_first

if [[ "$test_first" =~ ^[Ss] ]]; then
    echo ""
    echo "🌐 Abriendo servidor local en http://localhost:8000"
    echo "   Cuando termines de probar, vuelve aquí y pulsa Ctrl+C"
    echo ""
    python3 -m http.server 8000 &
    SERVER_PID=$!
    sleep 2
    open "http://localhost:8000"
    
    read -p "   Pulsa Enter cuando hayas terminado de probar..."
    kill $SERVER_PID 2>/dev/null || true
fi

echo ""
echo "🚀 Desplegando a Vercel..."
echo "   (Si es tu primera vez, te pedirá login con tu email)"
echo ""

vercel --prod

echo ""
echo "  ╔════════════════════════════════════════╗"
echo "  ║          ✅  DEPLOY COMPLETO            ║"
echo "  ╚════════════════════════════════════════╝"
echo ""
echo "📋 SIGUIENTES PASOS:"
echo ""
echo "  1️⃣  Copia la URL '✅ Production' de arriba"
echo "  2️⃣  Ve a https://pwabuilder.com"
echo "  3️⃣  Pega la URL y descarga el APK"
echo ""
echo "Más detalles en PASO_A_PASO.md"
echo ""

# Open PWABuilder
read -p "¿Abrir PWABuilder ahora? [s/n]: " open_pwa
if [[ "$open_pwa" =~ ^[Ss] ]]; then
    open "https://www.pwabuilder.com"
fi

echo ""
echo "🎉 ¡Listo Angel! Tu SpiritPet ya está en internet."
echo ""
