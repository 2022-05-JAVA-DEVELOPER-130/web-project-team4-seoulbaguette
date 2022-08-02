package com.itwill.bakery.dao.test;

import com.itwill.bakery.dao.ProductDao;

public class ProductDaoTestMain {

	public static void main(String[] args) throws Exception {
		ProductDao productDao=new ProductDao();
		System.out.println(productDao.selectByNo(1));
		System.out.println(productDao.selectAll());

	}

}
