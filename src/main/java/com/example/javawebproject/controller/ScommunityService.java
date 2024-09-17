package com.example.javawebproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.javawebproject.model.Community;
import com.example.javawebproject.model.ScommunityRepository;



@Service
public class ScommunityService {
	@Autowired
	private ScommunityRepository repo;
	

	public List<Community> listAll(String keyword) {
		if(keyword != null) {
			return repo.findAll(keyword);
		}
		return repo.findAll();
	}
}
