This project spring boot graphql example;

It uses H2 database or (postgrsql database)

Two tables ; inventory and customer
inventory has foreinkey with customer_id (one to many)

spring boot; uses jpa repository, h2 database ( or postgresql)
if you need some sql statemnt for data.sql and table.sql

and some graphql setup;
resources/graphql/schema.graphqls

The Query ; @QueryMapping (GraphqlController)
type (entity)

http://localhost:8080/graphiql?path=/graphql

and some exaple;

query InventorByName {
  inventoryByName (inventoryName: "M") {
      inventoryId
      inventoryName
      inventoryCode
      inventoryAmount
      inventoryType
      inventoryPrice
    	customer{
            customerId
            customerName
            customerCode
            customerAddress
            customerType
            customerAmount
      }
    
  }
}

query CustomerS {
  customerByName(customerName: "John") {
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

query CustomerByName {
  customerByName(customerName: "John") {
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

query Inventor {
  inventoryById(id: "1") {
      inventoryId
      inventoryName
      inventoryCode
      inventoryAmount
      inventoryType
      inventoryPrice
    
  }
}

query InventorByName {
  inventoryByName (inventoryName: "M") {
      inventoryId
      inventoryName
      inventoryCode
      inventoryAmount
      inventoryType
      inventoryPrice
    	customer{
            customerId
            customerName
            customerCode
            customerAddress
            customerType
            customerAmount
      }
    
  }
}
