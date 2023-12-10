package com.poly.service;

import java.util.Collection;

import com.poly.entity.CartItem;

public interface ShoppingCartService {
	//dinh nghia cac ham 
	void remove(int id);
	void add(CartItem item);
	double getAmount();
	int getCount();
	Collection<CartItem> getAllItems();
	void clear();
	CartItem update(int proId, int qty);
	
	
}
