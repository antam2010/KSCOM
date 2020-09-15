package vo;

public class Com_case {

	private int id;
	private String brand;
	private String name;
	private String size;
	private String power_standard;
	private String board_standard;
	private String image;
	private int price;
	private String content;
	private int readcount;
	
	public Com_case(int id, String brand,String name, String size, String power_standard, String board_standard,
			String image, int price, String content, int readcount) {
		this.id=id;
		this.brand=brand;
		this.name=name;
		this.size=size;
		this.power_standard=power_standard;
		this.board_standard=board_standard;
		this.image=image;
		this.price=price;
		this.content=content;
		this.readcount=readcount;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getId() {
		return id;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getPower_standard() {
		return power_standard;
	}
	public void setPower_standard(String power_standard) {
		this.power_standard = power_standard;
	}
	public String getBoard_standard() {
		return board_standard;
	}
	public void setBoard_standard(String board_standard) {
		this.board_standard = board_standard;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
}
