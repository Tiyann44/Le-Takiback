package com.takima.backskeleton.DAO;

import com.takima.backskeleton.models.Score;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ScoreDAO extends JpaRepository<Score, Long> {
    @Modifying
    @Transactional
    @Query("UPDATE Score s SET s.score = ?2 WHERE s.id = ?1")
    void updateScoreById(long id, int score);

    @Modifying
    @Transactional
    @Query("UPDATE Score s SET s.message = ?2 WHERE s.id = ?1")
    void updateMessageById(long id, String message);
}