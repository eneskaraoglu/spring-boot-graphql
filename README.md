# spring-boot-graphql
 spring-boot-graphql


First we have to create database
I prefered postgre 
this is my code for docker;
this docker code is creat and run database for us ;

docker run --name docker_postgres_ek -e POSTGRES_PASSWORD=enes -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data postgres 

use database tool connect to database , i prefer to dbeaver

localhost:5432 
user/pass postgres/enes

spring boot automaticly create tables using entity and insert data from data.sql (src\main\resources\data.sql)

when run the project;

http://localhost:8080/


query GetCustomer {
  customerById(id: "2") {
    customerId
    customerName
    customerCode
    customerAddress
    customerType
    customerAmount
    inventories {
      inventoryId
      inventoryName
      inventoryCode
      inventoryAmount
      inventoryType
      inventoryPrice
    }
  }
}