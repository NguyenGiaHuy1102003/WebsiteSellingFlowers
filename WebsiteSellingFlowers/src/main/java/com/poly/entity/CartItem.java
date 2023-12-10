package com.poly.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartItem {
	private Integer productId;
	private String name;
	private double price;
	private String Image;
	private int qty = 1;  //so luong 1
}
