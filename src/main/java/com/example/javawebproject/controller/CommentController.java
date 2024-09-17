package com.example.javawebproject.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.javawebproject.model.Comment;
import com.example.javawebproject.model.CommentRepository;



@Controller
public class CommentController {
	@Autowired
	CommentRepository repo;
	
	
	@GetMapping("/comment")
	public String CommentShow(Model model) {
		List<Comment> comList = repo.qq();
		ArrayList<Comment> list = new ArrayList<Comment>();
		for(Comment com : comList) {
			list.add(com);
		}
		
		
		model.addAttribute("comlist", list);
		System.out.println("5555555555555555555555");
		return "commentshow";
	}
	
	@GetMapping("/commentadd")
	public String addComment(@RequestParam("detail") String detail, @RequestParam("id") Integer commuid,@RequestParam("fname") String fname, Model model) {
		Comment com = new Comment();
		com.setFname(fname);
		com.setDetail_comment(detail);
		com.setLikeCount(0);
		com.setPost_date(new Date());
		com.setFid_commu(commuid);
	    
	    repo.insert(com);
	    System.out.println("Save!! Success");
	    
	  
	    return "redirect:/detail/" + commuid;
	}
	
	@GetMapping("/commentlove")
	public String update(@RequestParam("id") Integer id, @RequestParam("love") int likeCount, @RequestParam("cid") Integer commuid, Model model) {
	    Comment foundComment = repo.findById(id);
	    foundComment.setLikeCount(likeCount);
	    repo.insert(foundComment); // ใช้เมธอด save() เพื่อทำการอัปเดตข้อมูล
	    System.out.println("Update!! Success");
	    return "redirect:/detail/" + commuid;
	}





}

