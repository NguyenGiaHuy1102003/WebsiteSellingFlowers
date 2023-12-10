package com.poly.service;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.poly.entity.CartItem;

@SessionScope
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
	Map<Integer, CartItem> maps = new HashMap<>(); //gio hang
	
	//CartItem : các mặt hàng trong giỏ hàng
	//Các mặt hàng lưu trong Map "maps"
	//'productId' xác định mặt hàng cụ thể trong giỏ hàng
	
	@Override
	public void add(CartItem item) //Thêm mặt hàng vào giỏ hàng
	{
		CartItem cartItem = maps.get(item.getProductId());
		if (cartItem == null) {
			maps.put(item.getProductId(), item);
		}
		else
		{
			cartItem.setQty(cartItem.getQty() +1);
		}
	}
	
	@Override
	public void remove(int id) //Xóa mặt hàng khỏi giỏ hàng theo Id
	{
		maps.remove(id);
	}
	
	@Override
	public CartItem update(int proId, int qty) //Cập nhật số lượng
	{
		CartItem cartItem = maps.get(proId);
		cartItem.setQty(qty);
		return cartItem;
	}
	
	@Override
	public void clear()
	{
		maps.clear();
	}
	
	
	@Override
	public Collection<CartItem> getAllItems()
	{							//maps.values(): Là phương thức
		return maps.values();	//của đối tượng maps để lấy tất cả các giá trị (các CartItem) 
								//trong maps dưới dạng một tập hợp (collection).
	}
	
	@Override
	public int getCount() //getCount(): Phương thức này trả về tổng số mặt hàng trong giỏ hàng.
	{
										//maps.values(): Lấy tất cả các giá trị (các CartItem) 
		return maps.values().size();	//từ maps dưới dạng một tập hợp.
										//.size(): Tính kích thước của tập hợp, tức là số lượng 
										//mặt hàng trong giỏ hàng.
	}
	
	@Override
	public double getAmount() //Phương thức này trả về tổng số tiền của tất cả các mặt hàng trong giỏ hàng.
	{
		return maps.values().stream()
							.mapToDouble(item -> item.getQty() * item.getPrice())
							.sum();				
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
