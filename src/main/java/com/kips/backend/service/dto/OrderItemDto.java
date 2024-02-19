package com.kips.backend.service.dto;

import lombok.Data;

@Data
public class OrderItemDto {
    private Integer productId;
    private Integer quantity;
    private float price;
}
