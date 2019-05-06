#!/bin/bash
APIKEYS=("beautybox-vtex" "cea" "centauro-v5" "chillibeans" "compracerta" "consul" "cursoslivresead" "deliverysupermuffato" "drogariaaraujo" "dutramaquinas" "electrolux" "gaston" "grupo-portaleducacao" "imaginarium-vtex" "madeiramadeira" "malwee" "marisa" "paqueta" "paquetaesportes" "saraiva-v5" "savegnago" "sportline" "velez") 
STATUS=''

existsConfig() {
    STATUS=$(curl -s -o /dev/null -w "%{http_code}" https://api.github.com/repos/chaordic/theme-"$i"/contents/.circleci/config.yml -u g1stavo:'J*r-Q=4Zx<mcfL3G}e^]zV(h,D^mmBun99raK+Q>x.$<~wVBj5j4D;->fjW%C"\\tR:A9Fw&')
    if [[ $STATUS -eq "200" ]] ; then
        echo "$i" "has config file"
    else
        echo "$i" "doesn't has config file"
    fi
}

for i in "${APIKEYS[@]}"; do existsConfig ; done