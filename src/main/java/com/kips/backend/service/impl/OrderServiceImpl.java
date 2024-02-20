package com.kips.backend.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kips.backend.domain.Order;
import com.kips.backend.repository.OrderRepository;
import com.kips.backend.service.OrderService;
import com.kips.backend.service.mapper.OrderMapper;
import com.kips.backend.service.request.OrderRequest;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository repository;

    @Autowired
    private final OrderMapper orderMapper;

    public List<Order> findAll() {
        return repository.findAll();
    }

    public Order findById(Long id) {
        Optional<Order> order = repository.findById(id);
        return order.get();
    }

    @Override
    public Order save(OrderRequest orderRequest) {
        Order order = orderMapper.toEntity(orderRequest);
        Order savedOrder = repository.save(order);
        return savedOrder;
    }
}
