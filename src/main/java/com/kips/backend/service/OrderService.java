package com.kips.backend.service;

import java.util.List;

import com.kips.backend.domain.Order;

public interface OrderService {
    public List<Order> findAll();

    public Order findById(Long id);
}
