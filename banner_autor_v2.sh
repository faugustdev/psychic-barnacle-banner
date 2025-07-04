#!/bin/bash

# Función para escribir texto carácter por carácter
typewriter() {
    local text="$1"
    local delay="${2:-0.05}"  # Velocidad por defecto
    
    while IFS= read -r -n1 char; do
        if [ -z "$char" ]; then
            echo
        else
            echo -n "$char"
            sleep "$delay"
        fi
    done <<< "$text"
}

# Función para escribir línea por línea (más rápido para ASCII art)
typewriter_line() {
    local text="$1"
    local delay="${2:-0.3}"
    
    while IFS= read -r line; do
        echo "$line"
        sleep "$delay"
    done <<< "$text"
}

# Limpiar pantalla
clear

# ASCII Art con efecto línea por línea
echo -e "\033[36m"
ascii_art="  ███████  █████  ██    ██  ██████  ██    ██ ███████ ████████ ██████  ███████ ██    ██ 
  ██      ██   ██ ██    ██ ██       ██    ██ ██         ██    ██   ██ ██      ██    ██ 
  █████   ███████ ██    ██ ██   ███ ██    ██ ███████    ██    ██   ██ █████   ██    ██ 
  ██      ██   ██ ██    ██ ██    ██ ██    ██      ██    ██    ██   ██ ██       ██  ██  
  ██      ██   ██  ██████   ██████   ██████  ███████    ██    ██████  ███████   ████   "

typewriter_line "$ascii_art" 0.2

echo -e "\033[0m"
sleep 0.5

# Información personal con efecto typewriter
echo -n -e "\033[1m"
typewriter "FAugustDev" 0.08
echo -e "\033[0m"
sleep 0.3

typewriter "DevOps / Site Reliability Engineer" 0.03
sleep 0.3

echo -n -e "\033[1m"
typewriter "Francisco August" 0.05
echo -n -e "\033[0m | \033[34m"
typewriter "https://github.com/faugustdev" 0.03
echo -e "\033[0m"

# Pausa final
sleep 1
echo
echo -e "\033[32mI keep calm in the midst of the technological storm 🧘‍♂️🌪️ 🚀\033[0m"