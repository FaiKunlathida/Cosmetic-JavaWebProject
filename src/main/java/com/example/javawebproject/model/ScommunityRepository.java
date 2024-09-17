package com.example.javawebproject.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ScommunityRepository extends JpaRepository<Community, Integer> {
    
    @Query("SELECT p FROM Community p WHERE p.tiltle LIKE %?1%"
            +"OR p.type LIKE %?1%")
    public List<Community> findAll(String keyword); 
}


