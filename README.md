# Eurofurence IAM Project

This Project is for providing a Identity Access Management.

## Installation instructions
**Info:** Docker is required to perform this installation

1. Clone the Repository and change into the correct directory
```
git clone git@github.com:eurofurence/ef-iam.git && cd ef-iam
```
2. Run the Docker Dev Environment
```
docker-compose up -d
```
3. Add the following entries to your hosts file
```
127.0.0.1 ef-iam.local api.ef-iam.local
```
4. You may now access the App at ef-iam.local from your Browser.
