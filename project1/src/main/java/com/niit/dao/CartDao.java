package com.niit.dao;

import java.util.List;

import com.niit.model.Cart;

public interface CartDao {

	public void addtoCart(Cart cart);
    public void deleteCartItem(int cid);
    public Cart getCartItem(int cid);
    public void updateCart(Cart cart);
    public List<Cart> getCartItems(String username);
	

	
}

