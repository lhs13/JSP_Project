package com.work.model;

public class WorkDTO {
	private String id;
	private String pwd;
	private String name;
	private String birth;
	private String gender;
	private String[] subject;
	private String code;
	
	
	
	public String getId() {
		return id == null ? "" : id.trim();
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd == null ? "" : pwd.trim();
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name == null ? "" : name.trim();
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth == null ? "" : birth.trim();
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender == null ? "" : gender.trim();
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String[] getSubject() {
		return subject;
	}
	public void setSubject(String[] subject) {
		this.subject = subject;
	}
	public String getCode() {
		return code == null ? "" : code.trim();
	}
	public void setCode(String code) {
		this.code = code;
	}
	
}
