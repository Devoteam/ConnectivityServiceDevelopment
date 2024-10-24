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

### End Points

The backend offers 3 end points as described below.

#### Check Liveness

```shell
GET http://localhost:8080/alive
```
Returns "OK" and HTTP 200 if the service is up and running.

#### Get Product List

```shell
GET http://localhost:8080/products
```
Gives the list of products stored within the database as JSON without the image set (HTTP 200).
The sort order is by product id to be able to enforce a particular order, e.g. by importance. In future there could be an extra id for this.

The result looks like this:
```shell
[
    {
        "id": 3,
        "category": "Škoda Connect Dienste",
        "name": "Care Connect - Fernzugriff ",
        "description": "Um noch mehr Komfort zu genießen ist Care Connect - Remote Access genau das Richtige. Ihre persönlichen Assistenten ...",
        "image": null
    },
    {
        "id": 4,
        "category": "Škoda Connect Dienste",
        "name": "Infotainment Online",
        "description": "Mit den Infotainment Online Diensten von Škoda Connect sind Sie unterwegs besser informiert. Suchen Sie nach spannenden Zielen ...",
        "image": null
    }
...
]
```

#### Get Product Image

```shell
GET http://localhost:8080/products/image/{id}
```

This end point retrieves the PNG image for a given product id (HTTP 200). If there is no image or the product does not exist HTTP 404 is returned.

### Database

The database is named "csd" and contains one products table:

```shell
CREATE TABLE `product` (
  `id`          bigint NOT NULL,
  `category`    varchar(255) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `image`       longblob,
  `name`        varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
)
```
