package com.kips.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kips.backend.domain.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long>{
    
}
