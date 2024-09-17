package com.example.javawebproject.model;



import org.springframework.stereotype.Repository;


import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import jakarta.transaction.Transactional;

@Repository
public class AllRepositpry {

	@PersistenceContext
	private EntityManager entityManager;

	
////////////////------login-----//////////////////
	//เช็ค user name ในฐานข้อมูล 
	public Users findByUsername(String username) {
		try {
			Query query = entityManager.createNativeQuery("SELECT * FROM users WHERE username = ? ", Users.class);
			query.setParameter(1, username);
			Users result = (Users) query.getSingleResult();
			System.out.println(result);
			return result;
		} catch (Exception e) {
			return null;
		}
	}

	//เช็ค user name และ password ที่ login เข้ามา
	public Users findByUsernameAndPassword(String username, String password) {
		try {
			Query query = entityManager.createNativeQuery("SELECT * FROM users WHERE username = ? AND password = ?",Users.class);
			query.setParameter(1, username);
			query.setParameter(2, password);
			return (Users) query.getSingleResult();
		}catch (Exception e) {
			return null;
		}
		
	}

	
	// save register
	@Transactional
	public Users save(Users users) {
		entityManager.persist(users); 
		return users;
	}

	public static Object findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}

