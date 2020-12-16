package com.javaweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javaweb.dao.ProductDAO;
import com.javaweb.service.productService;

@Controller
public class HomeController {
	@Autowired
	productService product_service;
	@Autowired
	ProductDAO product_dao;

	@GetMapping("")
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView("web/home");
		modelAndView.addObject("listProduct",product_service.listProduct());
		modelAndView.addObject("index",1);
		return modelAndView;
	}
	
	@GetMapping("/createProduct")
	public ModelAndView formCreateProduct() {
		ModelAndView modelAndView = new ModelAndView("web/createProduct");
		return modelAndView;
	}

	@PostMapping("/createProduct")
	public ModelAndView createProduct(@RequestParam String nameProduct, @RequestParam String description,
			@RequestParam float price, @RequestParam String image,ModelMap map) {
		if (nameProduct == null || description == null || price <= 0|| image == null) {
			map.addAttribute("check", "Do not leave any boxes blank");
			return formCreateProduct();
		}else {
			product_service.createProduct(nameProduct, price, description, image);
			return index();
		}

//		return null;
	}
	
	@GetMapping("/delete/{id_product}")
	public ModelAndView delete(@PathVariable int id_product) {
		
		product_service.deteteProduct(id_product);
		
		return index();
	}
	
	
	@GetMapping("/edit/{id_product}")
	public ModelAndView edit(@PathVariable int id_product) {
		ModelAndView modelAndView = new ModelAndView("web/editProduct");
		modelAndView.addObject("product",product_dao.productbyID(id_product));		
		return modelAndView;
	}
	
	@PostMapping("edit")
	public ModelAndView editProduct(@RequestParam int id,@RequestParam String nameProduct, @RequestParam String description,
			@RequestParam float price, @RequestParam String image,ModelMap map) {
		
//		System.out.println("nhan duc id la"+ id);
		if (nameProduct == null || description == null || price <= 0|| image == null) {
			map.addAttribute("check", "Do not leave any boxes blank");
			return formCreateProduct();
		}else {
			product_service.editProduct(id, nameProduct, price, description, image);
			return index();
		}

//		return null;
	}
	
	
}
