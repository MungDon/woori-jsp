package web.test.bean;

import java.sql.Timestamp;

public class BoardDTO {
		
	private int num;
	
	private String writer;
	
	private String title;
	
	private String content;
	
	private Timestamp reg;

	
	//setter()
	public void setNum(int num) {
		this.num = num;
	}
	
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public void setReg(Timestamp reg) {
		this.reg = reg;
	}
	
	//getter()
	public int getNum(){
		return num;
	}
	
	public String getWriter() {
		return writer;
	}
	
	public String getTitle() {
		return title;
	}
	
	public String getContent() {
		return content;
	}
	
	public Timestamp getReg() {
		return reg;
	}
}
