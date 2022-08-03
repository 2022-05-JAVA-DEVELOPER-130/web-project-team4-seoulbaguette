package com.itwill.bakery.service;

import com.itwill.bakery.dao.CartDao;
import com.itwill.bakery.vo.Cart;

public class CartService {
	private CartDao cartDao;
	public CartService()throws Exception{
		cartDao=new CartDao();
	}
	
	//cart insert or update
	public int insertCart(Cart cart)throws Exception{
		int product_count=cartDao.cartProductCount(cart);
		if(product_count==0) {
			cartDao.insertCart(cart);
		}else if(product_count==1) {
			cartDao.cartProductCount(cart);
		}
		return 0;
	}
	
	//cart update
	/*
	 * public int update(Cart cart) throws Exception { int product_count =
	 * cartDao.cartProductCount(cart); if (product_count == 1) { return
	 * cartDao.updateCartByUserIdAndProductNo(cart); } else { return
	 * cartDao.insertCart(cart); } }
	 */
	
	//cart update
	public int updateCart(Cart cart)throws Exception{
		return cartDao.updateQtyByPNo(cart);
	}
	
	//cart delete
	public int deleteCart(String userid)throws Exception{
		return cartDao.deleteCart(userid);
	}
	
}
