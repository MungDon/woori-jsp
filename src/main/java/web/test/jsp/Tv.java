package web.test.jsp;

public class Tv {
	
	private String model;	// 모델명
	
	private String brand;	// 브랜드
	
	private String color;		// 색상
	
	/*setter()*/
	public void setModel(String model) {
		this.model = model;
	}
	
	public void setBrand(String brand) {
		this.brand = brand;
	}

	public void setColor(String color) {
		this.color = color;
	}
	
	/*getter()*/
	public String getModel() {
		return model;
	}
	
	public String getBrand() {
		return brand;
	}
	
	public String getColor() {
		return color;
	}
}
