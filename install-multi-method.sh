#!/bin/bash

echo "🚀 Installing MULTI-METHOD CAD Analysis Requirements..."

# Update pip first
echo "📦 Updating pip..."
python -m pip install --upgrade pip

# Install Python packages
echo "🐍 Installing Flask and dependencies..."
pip install flask flask-cors requests

# Install ALL CAD Analysis Libraries for maximum compatibility
echo "📦 Installing CADQuery..."
pip install cadquery-ocp

echo "🧊 Installing Trimesh..."
pip install trimesh

echo "🌐 Installing Open3D..."
pip install open3d

echo "📊 Installing NumPy (if not already installed)..."
pip install numpy

echo "✅ All MULTI-METHOD requirements installed!"
echo ""
echo "🎯 MULTI-METHOD FALLBACK ORDER:"
echo "1. CADQuery (for STEP/IGES files)"
echo "2. Trimesh (for STL/mesh files)" 
echo "3. Open3D (backup for STL files)"
echo "4. File Size Estimation (final fallback)"
echo ""
echo "🚀 NEXT STEPS:"
echo "1. Run backend: python app.py"
echo "2. Open frontend: complete-ai-machine-shop.html"
echo "3. Backend will be at: http://127.0.0.1:5000"
echo ""
echo "🔧 If any library fails to install, the system will still work with available methods!"
