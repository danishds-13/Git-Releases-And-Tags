#!/bin/bash
set -e

APP_DIR="/var/www/html"
VERSION=$(cat VERSION)

echo "================================="
echo "🚀 Deploying application version: $VERSION"
echo "================================="

sudo rm -rf ${APP_DIR:?}/*
sudo cp -r app/* $APP_DIR/

echo "✅ Deployment of $VERSION completed successfully"
