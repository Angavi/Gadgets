package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;


@Entity
@Table(name="productdetails")
public class Product {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int pId;
	
	@NotEmpty(message="Product name is mandatory")
	private String pName;
	@NotEmpty(message="Manufacturer details is mandatory")
	
	private String pManufacture;
	
	@NotEmpty(message="Description is mandatory")
	private String pDescription;
	
	@Min(value=100, message="Minimum price should be 100")
	private Double pPrice;
	
	@Min(value=10,message="Minimum Stock value should be 10")
	private int pUnitInStock;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="cid")
	@NotNull(message="Category is mandatory")
	private Category category;

	


	public Category getCategory() {
		return category;
	}


	public void setCategory(Category category) {
		this.category = category;
	}


	@Transient
	private MultipartFile image;


	public int getpId() {
		return pId;
	}


	public void setpId(int pId) {
		this.pId = pId;
	}


	public String getpName() {
		return pName;
	}


	public void setpName(String pName) {
		this.pName = pName;
	}


	public String getpManufacture() {
		return pManufacture;
	}


	public void setpManufacture(String pManufacture) {
		this.pManufacture = pManufacture;
	}


	public String getpDescription() {
		return pDescription;
	}


	public void setpDescription(String pDescription) {
		this.pDescription = pDescription;
	}


	public Double getpPrice() {
		return pPrice;
	}


	public void setpPrice(Double pPrice) {
		this.pPrice = pPrice;
	}


	public int getpUnitInStock() {
		return pUnitInStock;
	}


	public void setpUnitInStock(int pUnitInStock) {
		this.pUnitInStock = pUnitInStock;
	}


	public MultipartFile getImage() {
		return image;
	}


	public void setImage(MultipartFile image) {
		this.image = image;
	}
	
	
	
	

}
