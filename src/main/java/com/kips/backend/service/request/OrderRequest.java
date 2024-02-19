package com.kips.backend.service.request;

import java.util.List;

import lombok.Data;

@Data
public class OrderRequest {
    private String userEmail;
    private List<OrderItemRequest> orderItems;
}
