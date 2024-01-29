package com.ek.graphql.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ek.graphql.entity.Customer;
import com.ek.graphql.entity.Inventory;
import com.ek.graphql.repository.InventoryRepository;

import java.util.List;

@Service
public class InventoryService {

    @Autowired
    private InventoryRepository inventoryRepository;

    public List<Inventory> getAllInventories() {
        return inventoryRepository.findAll();
    }

    public Inventory getInventoryById(Long id) {
        return inventoryRepository.findById(id).orElse(null);
    }
    
    public List<Inventory> getInventoryName(String inventoryName) {
        return inventoryRepository.findByInventoryNameContaining(inventoryName);
    }
    
    public List<Inventory> getInventoryNameAndCustomer(String inventoryName) {
        return inventoryRepository.findByInventoryNameContaining(inventoryName);
    }

    // Diğer servis metodları (örneğin: createInventory, updateInventory, deleteInventory) buraya eklenebilir
}
