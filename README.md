# ConnectivityServiceDevelopment

The repository for the Skoda tender Connectivity Service Development

## Backend

### Environment Variables

For database access these environment variables have to be set:

- CSD_DB_URL: Contains the MySQL connect URL, e.g. "jdbc:mysql://localhost:3306/csd"
- CSD_DB_USER: The database user id
- CSD_DB_PASSWORD: The database user's password

### Working with the backend container image

#### Prerequisites

- Docker
- AWS CLI v2
- Access to the 1Password vault (for the credentials)

#### How to build and push

1. Use `aws configure` and use the AWS secret key and key ID to authenticate. When prompted for the region name use `eu-central-1`.
1. Run the following command to login to the private Elastic Container Registry (ECR) repository:

```shell
aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 205930623194.dkr.ecr.eu-central-1.amazonaws.com
```

The output will look like this:

```
WARNING! Your password will be stored unencrypted in /home/<user>/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credential-stores

Login Succeeded
```

3. Build the docker image using the following command

```shell
sudo docker build -t 205930623194.dkr.ecr.eu-central-1.amazonaws.com/connectivity-service-development/backend:latest .
```

4. Push the created image to the repository

```shell
sudo docker push 205930623194.dkr.ecr.eu-central-1.amazonaws.com/connectivity-service-development/backend:latest
```

#### How to run the Docker image locally

You can use the following command to run the image locally:

```shell
sudo docker run --rm -it -p 8080:8080 205930623194.dkr.ecr.eu-central-1.amazonaws.com/connectivity-service-development/backend:latest
```

When the container is started, you can send HTTP requests to the container using cURL or a tool like Postman. Example:

```shell
curl http://localhost:8080/alive

OK%
```
