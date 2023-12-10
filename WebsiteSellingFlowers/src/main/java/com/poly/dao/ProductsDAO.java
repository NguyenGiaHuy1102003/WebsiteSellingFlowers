package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.poly.entity.Products;

public interface ProductsDAO extends JpaRepository<Products, Integer> {

}
