#!/bin/bash
set -e

echo ">>> Installing Node.js 20 LTS..."
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y nodejs

echo ">>> Node version: $(node -v)"
echo ">>> npm version: $(npm -v)"

echo ">>> Installing dependencies..."
npm install

echo ">>> Building..."
npm run build

echo ">>> Done."
