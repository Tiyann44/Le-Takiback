package com.takima.backskeleton.DAO;

import com.takima.backskeleton.models.Quiz;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface QuizDAO extends JpaRepository<Quiz, Long> {
    @Modifying
    @Transactional
    @Query("UPDATE Quiz q SET q.name = ?2 WHERE q.id = ?1")
    int updateNameById(long id, String name);

    @Modifying
    @Transactional
    @Query("UPDATE Quiz q SET q.description = ?2 WHERE q.id = ?1")
    int updateDescriptionById(long id, String description);


}