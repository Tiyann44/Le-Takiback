package com.takima.backskeleton.DAO;

import com.takima.backskeleton.models.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionDAO extends JpaRepository<Question, Long> {
}