package com.spring.em.member.model.vo;

public class Member {

	private String email;
	private String password;
	private String name;
	private String gender;
	private int age;
	private int height;
	private int weight;
	private int bm;
	
	public Member() {}

	public Member(String email, String password, String name, String gender, int age, int height, int weight, int bm) {
		super();
		this.email = email;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.height = height;
		this.weight = weight;
		this.bm = bm;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getBm() {
		return bm;
	}

	public void setBm(int bm) {
		this.bm = bm;
	}

	@Override
	public String toString() {
		return "Member [email=" + email + ", password=" + password + ", name=" + name + ", gender=" + gender + ", age="
				+ age + ", height=" + height + ", weight=" + weight + ", bm=" + bm + "]";
	}
	
	
	
}
