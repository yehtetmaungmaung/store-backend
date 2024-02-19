package com.kips.backend.service.request;

import lombok.Data;

@Data
public class OrderItemRequest {
    private Integer productId;
    private Integer quantity;
    private float price;
}
