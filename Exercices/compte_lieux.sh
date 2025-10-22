#!/bin/bash
ANNEE="$1"
MOIS="$2"
LIEUX="$3"

if [ "$ANNEE" = "*" ] && [ "$MOIS" = "*" ]; then
    cat */*.ann | grep "Location" | cut -f3 | sort | uniq -c | sort -nr | head -n $LIEUX
elif [ "$MOIS" = "*" ]; then
    cat $ANNEE/${ANNEE}_*.ann | grep "Location" | cut -f3 | sort | uniq -c | sort -nr | head -n $LIEUX
else
    cat $ANNEE/${ANNEE}_${MOIS}_*.ann | grep "Location" | cut -f3 | sort | uniq -c | sort -nr | head -n $LIEUX
fi
