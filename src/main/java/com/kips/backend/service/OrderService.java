package com.kips.backend.service;

import java.util.List;

import com.kips.backend.domain.Order;
import com.kips.backend.service.request.OrderRequest;

public interface OrderService {
    public List<Order> findAll();

    public Order findById(Long id);

    public Order save(OrderRequest orderrRequest);
}
