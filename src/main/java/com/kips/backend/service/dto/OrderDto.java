package com.kips.backend.service.dto;

import java.util.List;

import lombok.Data;

@Data
public class OrderDto {
    private String userEmail;
    private List<OrderItemDto> orderItems;
}
