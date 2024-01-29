package com.ek.graphql.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.graphql.data.method.annotation.SchemaMapping;
import org.springframework.stereotype.Controller;

import com.ek.graphql.entity.Customer;
import com.ek.graphql.entity.Inventory;
import com.ek.graphql.services.CustomerService;
import com.ek.graphql.services.InventoryService;

@Controller
public class GraphqlController {
	
    @Autowired
    private CustomerService customerService;
    
    @Autowired
    private InventoryService inventoryService;
    
    @QueryMapping
    public Customer customerById(@Argument Long id) {
        return customerService.getCustomerById(id);
    }
    
    //Buradaki argument ismin schemadaki ile aynı olmalı
    @QueryMapping
    public List<Customer> customerByName(@Argument String customerName) {
        return customerService.getCustomerName(customerName);
    }
    
    //Buradaki argument ismin schemadaki ile aynı olmalı
    @QueryMapping
    public Inventory inventoryById(@Argument Long id) {
        return inventoryService.getInventoryById(id);
    }
    
    //Buradaki argument ismin schemadaki ile aynı olmalı
    @QueryMapping
    public List<Inventory> inventoryByName(@Argument String inventoryName) {
        return inventoryService.getInventoryName(inventoryName);
    }
    
    //Buradaki argument ismin schemadaki ile aynı olmalı
    @QueryMapping
    public List<Inventory> inventoryByNameAndCustomer(@Argument String inventoryName) {
        return inventoryService.getInventoryNameAndCustomer(inventoryName);
    }

/*
    @SchemaMapping
    public Inventory customer(Customer customer) {
        return inventoryService.getInventoryById(customer.getCustomerId());
    }   
    
    @SchemaMapping
    public Customer inventory(Inventory inventory) {
        return customerService.getCustomerById((inventory.getCustomer()).getCustomerId());
    }
 */   

}