package com.example.javawebproject.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import jakarta.transaction.Transactional;

@Repository
public class UsersRepository {
	@PersistenceContext
    private EntityManager em;
	
	 @Transactional
	    public Users insert(Users m) {
	        em.persist(m);
	        return m;
	    }

	    public List<Users> qq() {
	        Query data = em.createQuery("from Comment");
	        return data.getResultList();
	    }

	    public Users findById(Integer id) {
	        return em.find(Users.class, id);
	    }
	    
	    @Transactional
	    public void deleteById(Integer id) {
	    	Users com = findById(id);
	        if (com != null) {
	            em.remove(com);
	        }
	    }
	    
	    @Transactional
	    public void updateLoveById(Integer id, String username) {
	    	Users com = findById(id);
	        if (com != null) {
	            com.setUsername(username);
	            em.merge(com);
	        } else {
	            throw new RuntimeException("Comment with id " + id + " not found");
	        }
	    }

}
