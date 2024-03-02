postgres:
	docker run --name postgres16 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=password -d postgres:16.2-alpine3.19

createdb:
	docker exec -it postgres16 createdb --username=root --owner=root bank-acc

dropdb:
	docker exec -it postgres16 dropdb bank-acc

migrateup:
	migrate -path db/migration -database "postgresql://root:password@localhost:5432/bank-acc?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgresql://root:password@localhost:5432/bank-acc?sslmode=disable" -verbose down

.PHONY: postgres createdb dropdb migrateup migratedown