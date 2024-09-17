package com.example.javawebproject.model;



import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;


@Entity
public class LikePost {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int lid;
	private int post_lid;
    private int user_lid;
    
    
    
	public int getLid() {
		return lid;
	}
	public void setLid(int lid) {
		this.lid = lid;
	}
	public int getPost_lid() {
		return post_lid;
	}
	public void setPost_lid(int post_lid) {
		this.post_lid = post_lid;
	}
	public int getUser_lid() {
		return user_lid;
	}
	public void setUser_lid(int user_lid) {
		this.user_lid = user_lid;
	}
	



    
    

}
