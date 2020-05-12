package com.work.model;

public class HomeWorkDTO {
	private int num;
	private String day;
	private String homework;
	private String content;
	private String title;
	private String id;
	
	public String getId() {
		return id == null ? "" : id.trim();
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getDay() {
		return day == null ? "" : day.trim();
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getHomework() {
		return homework == null ? "" : homework.trim();
	}
	public void setHomework(String homework) {
		this.homework = homework;
	}
	public String getContent() {
		return content == null ? "" : content.trim();
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title == null ? "" : title.trim();
	}
	public void setTitle(String title) {
		this.title = title;
	}
}
