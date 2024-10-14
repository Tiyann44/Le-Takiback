package com.takima.backskeleton.DAO;

import com.takima.backskeleton.models.Choice;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ChoiceDAO extends JpaRepository<Choice, Long> {
    @Modifying
    @Transactional
    @Query("UPDATE Choice a SET a.option = ?2 WHERE a.id = ?1")
    int updateOptionById(long id, String option);
}
