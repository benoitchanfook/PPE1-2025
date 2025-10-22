ANNEE=$1
TYPE=$2
for ANNEE in 2016 2017 2018
do
echo -n "$ANNEE: "
grep "$TYPE" "$ANNEE"/*.ann | wc -l
done
