package com.itwill.bakery.service;

import java.util.List;

import com.itwill.bakery.dao.CartDao;
import com.itwill.bakery.vo.Cart;

public class CartService {
	private CartDao cartDao;
	public CartService()throws Exception{
		cartDao=new CartDao();
	}
	
	//cart create
	public int CreateCart(Cart cart)throws Exception{
		if(cartDao.cartProductExist(cart)){
			return cartDao.updateQtyByPNo(cart);
		}else {
			return cartDao.insertCart(cart);
		}
	}
	
	//cart update
	public int updateQtyByPNo(Cart cart)throws Exception{
		return cartDao.updateQtyByPNo(cart);
	}
	
	//cart deleteAll
	public int deleteCartByUserId(String userid)throws Exception{
		return cartDao.deleteCart(userid);
	}
	
	//cart deleteByCNo
	public int deleteCartByCNo(int cart_no)throws Exception{
		return cartDao.deleteCartByCNo(cart_no);
	}
	
	//select cartlist
	public List<Cart> selectCartList(String user_id)throws Exception{
		return cartDao.selectCartByUserid(user_id);
	}
	
	//select cart
	public Cart selectCart(int cart_no)throws Exception{
		return cartDao.selectCartByCartNo(cart_no);
	}
}
