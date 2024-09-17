package com.example.javawebproject.model;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import jakarta.transaction.Transactional;

@Repository
public class LikeRepository {
	@PersistenceContext
    private EntityManager em;

    @Transactional
    public LikePost insert(LikePost m) {
        em.persist(m);
        return m;
    }

    public List<LikePost> qq() {
        Query data = em.createQuery("from LikePost");
        return data.getResultList();
    }

    public LikePost findById(Integer id) {
        return em.find(LikePost.class, id);
    }
    
    @Transactional
    public void deleteById(Integer id) {
    	LikePost com = findById(id);
        if (com != null) {
            em.remove(com);
        }
    }
    
//    @Transactional
//    public void updateLoveById(Integer id, int newLoveValue) {
//    	LikePost com = findById(id);
//        if (com != null) {
//            com.setLile_date(new Date());
//            em.merge(com);
//        } else {
//            throw new RuntimeException("Comment with id " + id + " not found");
//        }
//    }

}
