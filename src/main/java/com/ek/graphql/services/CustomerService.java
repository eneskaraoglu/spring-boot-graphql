package com.ek.graphql.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ek.graphql.entity.Customer;
import com.ek.graphql.entity.Inventory;
import com.ek.graphql.repository.CustomerRepository;
import com.ek.graphql.repository.InventoryRepository;

import java.util.List;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;
    
    @Autowired
    private InventoryRepository inventoryRepository;

    public List<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }

    public Customer getCustomerById(Long id) {
        Customer customer = customerRepository.findById(id).orElse(null);
       /* if (customer != null) {
            List<Inventory> inventories = inventoryRepository.findByCustomer(customer);
            System.out.println("inventories.size():"+inventories.size());
            customer.setInventories(inventories); // Bu satırı Customer sınıfında bir listeye atama yaparak önceden tanımlamalısınız
        }*/
        return customer;
    }
    
    public List<Customer> getCustomerName(String customerName) {
        return customerRepository.findByCustomerNameContaining(customerName);
    }

    // Diğer servis metodları (örneğin: createCustomer, updateCustomer, deleteCustomer) buraya eklenebilir
}
