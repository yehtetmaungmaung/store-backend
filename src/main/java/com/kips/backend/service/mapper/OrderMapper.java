package com.kips.backend.service.mapper;

import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.kips.backend.domain.Order;
import com.kips.backend.domain.OrderItem;
import com.kips.backend.domain.User;
import com.kips.backend.service.ProductService;
import com.kips.backend.service.UserService;
import com.kips.backend.service.request.OrderRequest;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor

public class OrderMapper {
    private final ProductService productService;
    private final UserService userService;
    private final OrderItemMapper orderItemMapper;

    public Order toEntity(OrderRequest request) {
        if (request == null) {
            return null;
        }

        Order order = new Order();
        User customer = userService.getUserByEmail(request.getUserEmail());
        order.setCustomer(customer);
        if (request.getOrderItems() != null) {
            Set<OrderItem> orderItems = request.getOrderItems().stream()
                    .map(orderItemMapper::toEntity)
                    .collect(Collectors.toSet());
             order.SetOrderItems(orderItems);
        }
        return order;
    }
}