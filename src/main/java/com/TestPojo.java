package com;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class TestPojo {
	
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	private Integer id;
	
	@Column(name="`name`")
	private String name;
	@Column(name="`value`")
	private String value;
	public TestPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TestPojo(String name, String value) {
		super();
		this.name = name;
		this.value = value;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
	
	
	

}
