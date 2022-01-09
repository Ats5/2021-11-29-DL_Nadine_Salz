#  Aufgabe 5 Shell
# grep= Bereinige die Datei und nehme # raus und nehme alle Zeilen, die mit Important, Creator und Mayba anfangen raus
# cut 5 und 12 =  nimm nur diese beiden Spalten ISSN und Date
# sed -e "s/ISSN://gi"  = nimm sowohl das großgeschriebene "ISSN:"als auch kleingeschriebene "issn:" raus und "s / //g" ersetze es mit Nichts
# Sort = sortiere die Nummern aufsteigend von 0033 zu 1999
# uniq = sortiere doppelte Nummern aus
# > gebe es in die Datei "2021-11-29-Dates_and_ISSNs_v1.tsv" aus
# echo = gebe als Info, dass das Script ausgeführt wurde "Script done" aus
grep -v "#" 2021-11-29-Article_list_dirty.tsv \
	| grep -v -e "^IMPORTANT" -e "^CREATOR" -e "^MAYBE" \
	| cut -f 5,12 \
	| sed -e "s/ISSN://gi" -e "s/ //g" \
	| sort \
	| uniq \
		> 2021-11-29-Dates_and_ISSNs_v1.tsv
echo "Script done"
