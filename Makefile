init-db:
	pg_restore -h 127.0.0.1 -p 5432 -U postgres -d  dvdrental -v "./data/dvdrental.tar"  