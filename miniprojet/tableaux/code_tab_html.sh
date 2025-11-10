#!/bin/bash


compteur=1
FICHIER="fr.txt"
echo "<html>"
echo "<head>"
echo "<title>tableau_html_mini-projet2</title>"
echo    "<meta charset="UTF-8" />"
echo "</head>"
echo "<body>" 
echo "<table>"
echo "<tr><th>ligne</th><th>HTTP</th><th>Nombre de mots</th><th>Encodage</th><th>URL</th></tr>"
while read -r line;
do
http_sortie=$(curl -s -o /dev/null -w "%{http_code}" -L "$line")
nombre_mots=$(lynx -dump "$line" 2> /dev/null| wc -w)
encodage=$(lynx -source "$line" 2> /dev/null| grep -i '<meta.*charset' | sed 's/</\&lt;/g; s/>/\&gt;/g')
echo -e "<tr><td>$compteur</td><td>$http_sortie</td><td>$nombre_mots</td><td>$encodage</td><td>${line}</td></tr>"

((compteur ++))

done < "$FICHIER"

echo "</table>"
echo "</body>"
echo "</html>"