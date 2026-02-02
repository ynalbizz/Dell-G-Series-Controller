#!/bin/bash

# Entra na pasta onde o script está salvo (garante que o main.py seja achado)
cd "$(dirname "$0")"

echo "=== Iniciando Dell Controller ==="

# Carrega o driver de energia necessário
echo "Carregando driver ACPI..."
sudo modprobe acpi_call

# Executa o Python DO AMBIENTE VIRTUAL diretamente com sudo
# Isso evita problemas de "module not found"
echo "Abrindo interface..."
sudo /home/carlos-davi/fanctrl_venv/bin/python3 main.py