package com.itwill.bakery.dao.test;

import java.util.ArrayList;
import java.util.List;

import com.itwill.bakery.dao.CartDao;
import com.itwill.bakery.dao.OrdersDao;
import com.itwill.bakery.dao.ProductDao;
import com.itwill.bakery.vo.OrderItem;
import com.itwill.bakery.vo.Product;


public class OrdersDaoTest {
	public static void main(String[] args) throws Exception {
		ProductDao productDao = new ProductDao();
		OrdersDao ordersDao = new OrdersDao();
		CartDao cartDao = new CartDao();
		List<OrderItem> oList = new ArrayList<OrderItem>(); 
		OrderItem orderItem = new OrderItem(0,2,2,new Product(2,"",1000,"","s",3,4));
		oList.add(orderItem);
		
		//확인 
		//System.out.println("주문 생성");
	    //System.out.println(ordersDao.create(new Orders(0,"",null,1000,"guntae123",11,oList)));
		
		//확인
		//System.out.println("주문 전체");
		System.out.println(ordersDao.list("guntae123"));
		
		//확인
		//System.out.println("주문 상세보기");
		//System.out.println(ordersDao.detail("three",3));
		
		
		
		
		//1. 상품에서 직접 주문 

		/*
		List<OrderItem> orderItemList = new ArrayList<OrderItem>();
		Product product = productDao.selectByNo(1);
		orderItemList.add(new OrderItem(0,1,0,product));
		 
		
		Orders newOrder = new Orders(0,"",null,product.getP_price()*1,"three",4,orderItemList);
		ordersDao.create(newOrder);
		*/
		
		
		
		
		
		
		
		
		
		// 2. cart에서 주문        ->>>>>>>>>>>>>>>>>>>안돼요...
		//	로그인한 guard1님이 주문
		
		
		
		
	/*	List<CartItem> cartItemList = cartDao.getCartList("three");
		System.out.println(cartItemList);
		List<OrderItem> orderItemList = new ArrayList<OrderItem>();
	*/
		//CartItem -> OrderItem
		 /*
		int orders_price = 0;
		for(CartItem cartItem : cartItemList) {
			orderItemList.add(new OrderItem(0,cartItem.getCart_qty(),0,cartItem.getProduct()));
			System.out.println(cartItem.getCart_qty());
			orders_price += cartItem.getCart_qty()*cartItem.getProduct().getP_price();
		}
		
		Orders newOrder = new Orders(0,"",null,orders_price,"three",5,orderItemList);
		ordersDao.create(newOrder);
			
		*/
		
	}
}
