package com.takima.backskeleton.DAO;

import com.takima.backskeleton.models.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface QuizDAO extends JpaRepository<Quiz, Long> {
}