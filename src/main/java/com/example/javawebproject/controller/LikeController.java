package com.example.javawebproject.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.javawebproject.model.Comment;
import com.example.javawebproject.model.CommentRepository;
import com.example.javawebproject.model.LikePost;
import com.example.javawebproject.model.LikeRepository;

public class LikeController {
	@Autowired
	LikeRepository repo;
	
	
	@GetMapping("/like")
	public String CommentShow(Model model) {
		List<LikePost> comList = repo.qq();
		ArrayList<LikePost> list = new ArrayList<LikePost>();
		for(LikePost com : comList) {
			list.add(com);
		}
		
		
		model.addAttribute("comlist", list);
		System.out.println("5555555555555555555555");
		return "commentshow";
	}
	
	@GetMapping("/likeadd")
	public String addComment(@RequestParam("p_lid") Integer p_lid, @RequestParam("u_lid") Integer u_lid, Model model) {
		LikePost com = new LikePost();
		com.setPost_lid(p_lid);
		com.setUser_lid(u_lid);
		
	    
	    repo.insert(com);
	    System.out.println("Save!! Success");
	    
	  
	    return "redirect:/detail/";
	}

}
