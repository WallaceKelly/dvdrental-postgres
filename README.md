# dvdrental-postgres

A customization of <https://www.postgresqltutorial.com/load-postgresql-sample-database/> for my classroom.

---

To run the database, use:

`docker run --detach --env POSTGRES_USER=postgres --env POSTGRES_PASSWORD=postgres --publish 5432:5432 --name dvdrental-postgres ghcr.io/wallacekelly/dvdrental-postgres:latest`

---

To build the image, use:

`docker build . --tag ghcr.io/wallacekelly/dvdrental-postgres:latest`

To upload the image, use:

`docker login ghcr.io`

`docker push ghcr.io/wallacekelly/dvdrental-postgres:latest`
