while read -r line;
do
	echo ${line};
done < "urls/fr.txt";

1. Pourquoi ne pas utiliser cat ?
2. Comment transformer "urls/fr.txt" en paramètre du script ?
2.1 Valider l’argument : ajouter le code nécessaire pour s’assurer qu’on donne bien un argument au script, sinon on s’arrête
3. Comment afficher le numéro de ligne avant chaque URL (sur la même ligne) ? Bien séparer les valeurs par des tabulations

#1.On pourrait effectivement penser à utiliser cat sur ce code pour la lecture du fichier mais
#ce serait en fait inefficace. Cat renverrait  l'entièreté du fichier à la boucle while.
#Or, la méthode < "urls/fr.txt" permet une lecture ligne par ligne, ce qui améliore les performances et facilite le traitement des infromations. Par exemple, si le code nous dévoile qu'une ligne est vide alors qu'elle est censée contenir un url, on pourrait rapidement apporter les modifications nécessaires au fichier.

#2. Pour transformer < "urls/fr.txt" en paramètre du script, on pourrait le définir comme un argument.

#2.1 if [-n $1] ; then
#        echo "L'argument est donné"
#    else
#		 echo "Aucun arguement"
#        exit 1
#    fi

#3. awk '{print NR "\t" $0}' urls/fr.txt
