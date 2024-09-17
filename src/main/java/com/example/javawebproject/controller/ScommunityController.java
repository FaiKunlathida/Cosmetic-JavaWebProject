package com.example.javawebproject.controller;

import java.util.List;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.javawebproject.model.Community;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;




@Controller
public class ScommunityController {
	
	@Autowired
	private ScommunityService service;
	
	@GetMapping("/search")
	 public String search( Model model,@Param("keyword")String keyword) {
       List<Community> results = service.listAll(keyword);
       model.addAttribute("results", results); 
       return "search";
       
	}
	
	
	
	
	
    }
