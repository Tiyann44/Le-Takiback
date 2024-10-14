package com.takima.backskeleton.DAO;

import com.takima.backskeleton.models.Question;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionDAO extends JpaRepository<Question, Long> {
    @Modifying
    @Transactional
    @Query("UPDATE Question q SET q.question = ?2 WHERE q.id = ?1")
    int updateQuestionTitleById(long id, String title);
}