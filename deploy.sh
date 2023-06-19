#!/bin/bash

# Ga naar de directory waar je Flask-toepassing is geïnstalleerd
cd /home/farm

# Haal de laatste wijzigingen op van de repository
git pull

# Herstart de toepassing met Gunicorn en Supervisor
supervisorctl stop main.py
supervisorctl start main.py

# Controleer of de toepassing correct wordt uitgevoerd
systemctl status main.py
