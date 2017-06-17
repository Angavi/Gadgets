package com.niit.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.niit.dao.CartDao;
import com.niit.dao.ProductDao;
import com.niit.model.Cart;
import com.niit.model.Product;

@Controller
public class CartController {
	
	@Autowired
	CartDao cartDao;
	
	@Autowired
	ProductDao productDao;
	
	 @RequestMapping(value="ShowCart")
	    public String showCartPage(Model m,HttpSession session)
	    {
	        String username=(String)session.getAttribute("username");
	        List<Cart> cartitems=cartDao.getCartItems(username);
	        m.addAttribute("cartitems",cartitems);
	        return "Cart";
	    }
	
	 
	/* @RequestMapping("/ProductDesc/{pId}")
		public String showProductDesc(@PathVariable("pId")int pId,Model m)
		{
			
			Product product=productDao.getProductById(pId);
			m.addAttribute("Product",product);
			return "ProductDesc"; 
		}*/
	
	 
	    @RequestMapping(value="/addToCart/{pId}")
	    public String addToCart(@PathVariable("pId")int pId,HttpSession session,Model m,Principal principal)
	    {
	    	System.out.println("entered the controller");
	        String username=(String)session.getAttribute("username");
	        Cart cart=new Cart();
	         
	        Product product=productDao.getProductById(pId);
	        
	        double pPrice=product.getpPrice();
	         
	        cart.setpId(pId);
	        cart.setQuantity(1); 
	        cart.setStatus("NP");
	        cart.setUsername(principal.getName());
	        cart.setSubtotal(1*pPrice);
	         
	    
	        cartDao.addtoCart(cart);
	         
	        List<Cart> cartitems=cartDao.getCartItems(username);
	        m.addAttribute("cartitems",cartitems);
	         
	        return "Cart";
	    }
	     
	    @RequestMapping(value="/deleteCartItem/{cid}")
	    public String deleteCartItem(@PathVariable("cid") int cid,Model m,HttpSession session)
	    {
	        String username=(String)session.getAttribute("username");
	         
	        cartDao.deleteCartItem(cid);
	         
	        List<Cart> cartitems=cartDao.getCartItems(username);
	        m.addAttribute("cartitems",cartitems);
	        return "Cart";
	    }
	     
	    @RequestMapping(value="/updateCartItem/{cid}")
	    public String updateCartItem(@PathVariable("cid")int cid,Model m,HttpSession session)
	    {
	        String username=(String)session.getAttribute("username");
	         
	        Cart cartitem=cartDao.getCartItem(cid);
	         
	        Product product=productDao.getProductById(cartitem.getpId());
	        Double pPrice=product.getpPrice();
	         
	        cartitem.setQuantity(1);
	        cartitem.setSubtotal(1*pPrice);
	        cartDao.updateCart(cartitem);
	         
	        List<Cart> cartitems=cartDao.getCartItems(username);
	        m.addAttribute("cartitems",cartitems);
	         
	        return "Cart";
	         
	    }
	    @RequestMapping("/checkout")
	  	public String checkout()
	  	{
	  		return "Payment";
	  	}
	    
	   
	     
	}

	

