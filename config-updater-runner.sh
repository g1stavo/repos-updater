#!bin/bash
APIKEYS=("saraiva-v5" "centauro-v5" "cea" "malwee" "marisa" "paquetaesportes")
for i in "${APIKEYS[@]}"; do ./config-updater.sh $i; done