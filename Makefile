all:
	echo "Use make compress to compress the database"
	ecbo "Use make extract to extract the database"

compress:
	pbzip2 graph7.db 
	pbzip2 graph8.db 
	pbzip2 graph9.db 
	pbzip2 graph10.db 
	split -d -b 80MB --verbose graph10.db.bz2 graph10_split_
	rm -vf graph10.db.bz2

extract:
	cat graph10_split_* > graph10.db.bz2
	find . -name "*.bz2" | xargs -I {} pbzip2 -d {}
	rm -vf graph10_split_*

