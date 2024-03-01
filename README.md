# bank-acc
Bank account operations with seamless transactions. Stack: Golang, Postgress, Kubernetes, gRPC, AWS

## Docker infrastructure
```
docker pull postgres:16.2-alpine3.19
```
```
// Adjust parameters to match your db setup
docker run --name postgres -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=password -d postgres:16.2-alpine3.19
```