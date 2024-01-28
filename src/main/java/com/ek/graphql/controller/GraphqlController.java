package com.ek.graphql.controller;


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

    @SchemaMapping
    public Inventory customer(Customer customer) {
        return inventoryService.getInventoryById(customer.getCustomerId());
    }
    

}