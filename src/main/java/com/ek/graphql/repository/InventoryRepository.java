package com.ek.graphql.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ek.graphql.entity.Customer;
import com.ek.graphql.entity.Inventory;

import java.util.List;

@Repository
public interface InventoryRepository extends JpaRepository<Inventory, Long> {
    List<Inventory> findByInventoryName(String inventoryName);
    List<Inventory> findByCustomer(Customer customer);
}