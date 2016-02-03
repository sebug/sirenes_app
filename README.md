Sirenes application
===================
Another civil protection project, this time with PostgreSQL. Basically it's just a simple Postgres docker file with the basic DB structure already present.

I didn't include the actual data of course.

Go to the postgresql folder, then

	docker build -t sirenes_postgresql .
	docker run --name spg_1 -e POSTGRES_PASSWORD=yourpassword -d sirenes_postgresql
	docker run -it --link spg_1:postgres --rm sirenes_postgresql sh -c 'exec psql -h "$POSTGRES_PORT_5432_TCP_ADDR" -p "$POSTGRES_PORT_5432_TCP_PORT" -U postgres'


