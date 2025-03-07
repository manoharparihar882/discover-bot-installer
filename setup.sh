#!/bin/bash

echo "🚀 Setting up Discover Bot..."

# Update & Install Dependencies
sudo apt install curl wget unzip git python3 python3-pip python3-venv nodejs npm -y

# Setup Python Virtual Environment
mkdir -p ~/discover-bot && cd ~/discover-bot
python3 -m venv venv
source venv/bin/activate
pip install requests selenium fastapi uvicorn google-api-python-client

# Setup Node.js Backend
mkdir -p ~/discover-bot/node_backend && cd ~/discover-bot/node_backend
npm init -y
npm install express axios puppeteer cors body-parser

echo "✅ Setup Completed! Run your bot now."
