# PPE1-2025
Programmation et Projet Encadré 1
J'essaie de synchroniser mon dépôt local avec Github
## Aujourd'hui, j'ai appris à apporter des modidication sur mon fichier git et à synchroniser mon dépôt local avec Github. J'ai aussi appris ce qu'est un fichier markdown.
Pour ajouter des modifications effectuées depuis mon fichier local, j'ai utilisé les commandes git pull, git add, git commit et enfin git push.

Pour le cours du 15/10/2025:

J'ai fait les deux premiers exercices du TP1. Le premier exercice m'a aidé à mieux comprendre l'utilisation des commandes echo, cat, grep et wc. L'exercice 2a m'a permis d'apprendre à definir des variables $1 $2 (etc.) en bash et de savoir les introduire dans mon code. J'ai aussi compris comment utiliser des boucles en bash avec for...in..., do et done. Enfin, j'ai eu plus de mal sur l'exrecice 2b mais je compte le reprendre à la maison avec la correction.

Pour le cours du 22/10/2025

Exemple: lire et expliquer ce code
#!/ usr/ bin/ bash   #Lancer un code bash avec shebang
if [ $# -ne 1 ]  #Définir une condition qui est la suivante: si tous les arguments ne sont pas égaux à 1
then  #Indique la commande à suivre si la condition est respectée
echo " ce programme demande un argument "  #L'interpréteur affichera le texte entre guillemets
exit  #Arrête l'éxecution du script
fi #Fin de la condition
FICHIER_URLS = $1  #La variable FICHIER_URLS prend la valeur de du premier argument
OK =0 #Initialise la variable OK à 0
NOK =0 #Initialise la variable NOK à 0
while read -r LINE ; #Boucle qui permet de lire le fichier ligne par ligne
do #On assigne la commande à suivre tant que la condition est respectée
echo " la ligne : $LINE " #L'interpréteur affiche le texte entre guillemets suivi de chaque ligne pour chaque ligne du fichier
if [[ $LINE =∼ ^ https ?:// ]] #Définir une condition if qui est la suivante: si la ligne commence par https ?://
then #Indique la commande à suivre si la condition est respectée
echo " ressemble à une URL valide " #Afficher le texte entre guillemets
OK =$( expr $OK + 1) #Ajouter 1 à la valeur acteulle de l'argument OK lorsque la ligne commence par https ?://
else #Indique la commande à suivre si la ligne ne commence pas par https ?://
echo " ne ressemble pas à une URL valide " #L'interpréteur affiche le texte entre guillemets
NOK =$ ( expr $NOK + 1) #Ajouter 1 à la valeur acteulle de l'argument NOK lorsque la ligne ne commence pas par https ?://
fi #Fin de la condition
done < $FICHIER_URLS #Fin de la boucle while
echo " $OK URLs et $NOK lignes douteuses " #L'interpréteur affcige un message indiquant le nombre total d'URLS et de lignes douteuses

J'ai fini les exercices script et j'ai renommé le script du permier exercice car je l'avais nommé autrement que ce que la consigne indiquait
