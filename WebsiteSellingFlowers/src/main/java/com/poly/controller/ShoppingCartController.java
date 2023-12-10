package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.ProductsDAO;
import com.poly.entity.CartItem;
import com.poly.entity.Products;
import com.poly.service.ShoppingCartService;

@Controller
@RequestMapping("shopping-cart")
public class ShoppingCartController {
	CartItem cartItem;
	@Autowired
	ProductsDAO dao;
	@Autowired
	ShoppingCartService cartService;
	
	@RequestMapping("views")
	public String viewCart(Model model)
	{
		model.addAttribute("CART_ITEMS", cartService.getAllItems());
		model.addAttribute("TOTAL", cartService.getAmount());
		return "cartItem";
	}
	
	@RequestMapping("detailProducts")
	public String DetailProducts(Model model)
	{
		model.addAttribute("CART_ITEMS", cartService.getAllItems());
		model.addAttribute("TOTAL", cartService.getAmount());
		return "detail-products";
	}
	
	//Thêm mới sản phẩm vào giỏ hàng
	@GetMapping("add/{id}")
	public String addCart(@PathVariable("id") int id,Model model)
	{
		Products list = dao.findById(id).get();
		model.addAttribute("list", list);
		if (list != null)
		{
			CartItem item = new CartItem();
			item.setProductId(list.getId());			
			item.setName(list.getName());
			item.setImage(list.getPhoto());
			item.setPrice(list.getPrice());
			item.setQty(1);
			cartService.add(item);
		}
		return "redirect:/shopping-cart/views";
	}
	
		@GetMapping("addProduct/{id}")
		public String addDetailProducts(@PathVariable("id") int id,Model model)
		{
			Products list = dao.findById(id).get();
			model.addAttribute("list", list);
			if (list != null)
			{
				CartItem item = new CartItem();
				item.setProductId(list.getId());			
				item.setName(list.getName());
				item.setImage(list.getPhoto());
				item.setPrice(list.getPrice());
				item.setQty(1);
				cartService.add(item);
			}
			return "detail-products";
		}
	
	//Xóa toàn bộ sản phẩm tron giỏ hàng
	@RequestMapping("clear")
	public String ClearCart()
	{
		cartService.clear();
		return "redirect:/shopping-cart/views";
	}
	
	//Xóa sản phẩm trong giỏ hàng
	@RequestMapping("remove/{productId}")
	public String RemoveCart(@PathVariable("productId") Integer productId)
	{
		cartService.remove(productId);
		return "redirect:/shopping-cart/views";
	}
	
	@PostMapping("update") //annotation xử lí yêu cầu
	public String updateQty(@RequestParam("id") Integer id,
							@RequestParam("qty") Integer qty)
	{
		if (qty > 1) 
		{
			cartService.update(id, qty);	
		}
		else 
		{
			cartService.remove(id);
		}
		
		return "redirect:/shopping-cart/views";
	}
	
	
	
	
	
	
	
	
}
