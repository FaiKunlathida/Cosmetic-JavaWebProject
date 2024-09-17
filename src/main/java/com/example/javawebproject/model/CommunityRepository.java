package com.example.javawebproject.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import jakarta.transaction.Transactional;



@Repository
public class CommunityRepository {
	
	
	@PersistenceContext
	private EntityManager community;
	
	@Transactional
	public Community insert(Community c) {
		community.persist(c);
		return c;
	}

	
	public List<Community> getCommunityAll(){
		Query data = community.createQuery("from Community");
		return data.getResultList();
		
	}
	
	public Community findById(Integer id) {
	    return community.find(Community.class, id);
	}

	


}

