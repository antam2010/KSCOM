package vo;

public class AdList {
	private String name;
	private String image;
	private int product_id;
	private String brand;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getImage() {
		return image;
	}
	public int getProduct_id() {
		return product_id;
	}
	public String getBrand() {
		return brand;
	}
}
