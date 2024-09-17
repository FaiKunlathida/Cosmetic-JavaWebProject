package com.example.javawebproject.model;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int comment_id;
    private String fname;
    private String detail_comment;
    private int likeCount;
    private Date post_date;
    private int fid_commu;

    // Getters and setters for the fields

    public int getComment_id() {
        return comment_id;
    }

    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getDetail_comment() {
        return detail_comment;
    }

    public void setDetail_comment(String detail_comment) {
        this.detail_comment = detail_comment;
    }

    public int getLikeCount() {
        return likeCount;
    }

    public void setLikeCount(int likeCount) {
        this.likeCount = likeCount;
    }

    public Date getPost_date() {
        return post_date;
    }

    public void setPost_date(Date post_date) {
        this.post_date = post_date;
    }

	public int getFid_commu() {
		return fid_commu;
	}

	public void setFid_commu(int fid_commu) {
		this.fid_commu = fid_commu;
	}
}

