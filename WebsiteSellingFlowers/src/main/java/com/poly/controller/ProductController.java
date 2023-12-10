package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.ProductsDAO;
import com.poly.entity.CartItem;
import com.poly.entity.Products;
import com.poly.service.ProductService;
import com.poly.service.ShoppingCartService;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	ProductsDAO dao;

	@RequestMapping("views")
	public String viewsProducts(Model model)
	{
		List<Products> items = dao.findAll();
		model.addAttribute("items",items);
		return "views-products";
	}
	
	
	
	
}
