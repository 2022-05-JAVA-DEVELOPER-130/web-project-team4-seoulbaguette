package com.itwill.bakery.service;

import java.util.List;

import com.itwill.bakery.dao.ProductDao;
import com.itwill.bakery.vo.Product;

public class ProductService {
	
	private ProductDao productDao;
	
	public ProductService() throws Exception {
		productDao=new ProductDao();
	}
	public Product selectByNo(int category_no) throws Exception {
		Product product=productDao.selectByNo(category_no);
		return product;
	}

	public List<Product> selectAll() throws Exception {
		List<Product> productList=productDao.selectAll();
		return productList;
	}
}
