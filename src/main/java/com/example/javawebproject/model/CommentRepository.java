package com.example.javawebproject.model;

import java.util.List;

import org.springframework.stereotype.Repository;


import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import jakarta.transaction.Transactional;

@Repository
public class CommentRepository {
	 @PersistenceContext
	    private EntityManager em;

	    @Transactional
	    public Comment insert(Comment m) {
	        em.persist(m);
	        return m;
	    }

	    public List<Comment> qq() {
	        Query data = em.createQuery("from Comment");
	        return data.getResultList();
	    }

	    public Comment findById(Integer id) {
	        return em.find(Comment.class, id);
	    }
	    
	    @Transactional
	    public void deleteById(Integer id) {
	    	Comment com = findById(id);
	        if (com != null) {
	            em.remove(com);
	        }
	    }
	    
	    @Transactional
	    public void updateLoveById(Integer id, int newLoveValue) {
	        Comment com = findById(id);
	        if (com != null) {
	            com.setLikeCount(newLoveValue);
	            em.merge(com);
	        } else {
	            throw new RuntimeException("Comment with id " + id + " not found");
	        }
	    }




}

