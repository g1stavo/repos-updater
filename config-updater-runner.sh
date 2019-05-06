#!bin/bash
APIKEYS=("beautybox-vtex" "cea" "centauro-v5" "chillibeans" "compracerta" "consul" "cursoslivresead" "deliverysupermuffato" "drogariaaraujo" "dutramaquinas" "electrolux" "gaston" "grupo-portaleducacao" "imaginarium-vtex" "madeiramadeira" "malwee" "marisa" "paqueta" "paquetaesportes" "saraiva-v5" "savegnago" "sportline" "velez") 
for i in "${APIKEYS[@]}"; do ./config-updater.sh $i; done