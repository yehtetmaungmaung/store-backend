package com.kips.backend.service.mapper;

import org.springframework.stereotype.Service;

import com.kips.backend.domain.OrderItem;
import com.kips.backend.domain.Product;
import com.kips.backend.service.ProductService;
import com.kips.backend.service.request.OrderItemRequest;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class OrderItemMapper {

    private final ProductService productService;
    
    public OrderItem toEntity(OrderItemRequest request) {
        if (request == null) {
            return null;
        }

        OrderItem orderItem = new OrderItem();
        Product product = productService.getProductById(request.getProductId());
        orderItem.setProduct(product);
        orderItem.setQuantity(request.getQuantity());
        orderItem.setPrice(request.getPrice());
        return orderItem;
    }
}
