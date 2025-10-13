ANNEE=$1
TYPE=$2
grep "$TYPE" "$ANNEE"/*.ann | wc -l
