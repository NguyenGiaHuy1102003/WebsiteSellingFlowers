package com.poly.controllerAdmin;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.dao.ProductsDAO;
import com.poly.entity.Products;
import com.poly.service.ParamService;




@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	ProductsDAO dao;
	@Autowired
	ParamService paramService;
	@RequestMapping("views")
	public String adminviews()
	{
		return "views-admin";
	}
	
	@RequestMapping("qlsanpham")
	public String index(Model model)
	{
	
		Products list = new Products();
		model.addAttribute("list",list);
		List<Products> items = dao.findAll();
		model.addAttribute("items",items);
		return "index";
	}
	
	@RequestMapping("/create") // Thêm mới sản phẩm
	public String create(Products list, Model model,
			@RequestParam("image")MultipartFile multipartFile) throws IOException
	{
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		String uploadDir = "uploads/";
		list.setPhoto(fileName);		
		dao.save(list);
		paramService.saveFile(multipartFile, uploadDir);
		return "redirect:/admin/qlsanpham";
	}
	
	@RequestMapping("/edit/{id}")//Chỉnh sửa sản phẩm
	public String edit(@PathVariable("id") Integer id, Model model)
	{
		Products list = dao.findById(id).get();
		model.addAttribute("list", list);
		List<Products> items = dao.findAll();
		model.addAttribute("items", items);
		return "index";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") Integer id, Model model)
	{
		dao.deleteById(id);
		return "redirect:/admin/qlsanpham";
	}
	
	@RequestMapping("/update")
	public String update(Products list)
	{
		dao.save(list);
		return "redirect:/admin/edit/" +list.getId();
	}
}
