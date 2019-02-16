# Energy Access Explorer Database

This is the SQL (PostgreSQL) code for the platform's database.

Naturally, PostgreSQL must be installed and running. You can find some minor
development utilities in the `makefile`. Uncomment the first lines and modify
them to your needs. Then, you can run `make build`.

It is written with having in mind that a PostgREST instance will run in front
it. Hence, the external dependencies/extensions must be pre-installed on the
system:
- [pgjwt](https://github.com/michelp/pgjwt)
- [uri](https://github.com/petere/pguri)
