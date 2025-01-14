package com.note.dto;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "notes")
public class Note {
	@Id
	private int id;
	private String title;
	@Column(columnDefinition = "TEXT",length = 10000 ) 
	private String conent;
	private Date addedDate;
	public Note(String title, String conent, Date addedDate) {
		super();
		this.id = new Random().nextInt(10000);
		this.title = title;
		this.conent = conent;
		this.addedDate = addedDate;
	}
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getConent() {
		return conent;
	}
	public void setConent(String conent) {
		this.conent = conent;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	
	

}
