package com.learn.learning;

public class Course {
	
	private long id;
	private String name;
	
	public Course(long id, String name) {
		super();
		this.id =id;
		this.name = name;
	}

	public long getId() {
		return id;
	}
	public String getName() {
		return name;
	}

	@Override
	public String toString() {
		return "Course [id=" + id + ", name=" + name + "]";
	}
	

}
