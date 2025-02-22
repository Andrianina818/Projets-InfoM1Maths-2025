#!/bin/bash

# Fonction pour calculer le PGCD avec l'algorithme d'Euclide
pgcd()
   {
    a=$1  
    b=$2  
    while [ $b -ne 0 ]; do  
        t=$b  
        b=$((a % b))  
        a=$t 
    done
    echo $a  
   }
#Vérification des nombres entiers positifs
echo -n "Entrez le premier nombre : "
read num1
echo -n "Entrez le deuxième nombre : "
read num2

if ! [[ "$num1" =~ ^[0-9]+$ ]] || ! [[ "$num2" =~ ^[0-9]+$ ]]; then
    echo "Erreur : Veuillez entrer des nombres entiers positifs."
    exit 1
fi
# Temps de début avant l'exécution
start_time=$(date +%s%N)

# Calcul du PGCD
result=$(pgcd $num1 $num2)#Appel de la focntion pgcd

# Temps de fin après l'exécution
end_time=$(date +%s%N)

#Temps d'exécution et conversion en millisecondes
time_elapsed=$(( (end_time - start_time) / 1000000 )) 

#affichage résultat
echo "Le PGCD  est : $result"
echo "Temps d'exécution : $time_elapsed ms"

