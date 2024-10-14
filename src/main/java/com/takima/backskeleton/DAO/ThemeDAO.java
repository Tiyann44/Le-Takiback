package com.takima.backskeleton.DAO;

import com.takima.backskeleton.models.Theme;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ThemeDAO extends JpaRepository<Theme, Long> {
    @Modifying
    @Transactional
    @Query("UPDATE Theme t SET t.name = ?2 WHERE t.id = ?1")
    int updateThemeById(long id, String name);

    @Modifying
    @Transactional
    @Query("UPDATE Theme t SET t.description = ?2 WHERE t.id = ?1")
    int updateDescriptionById(long id, String description);
}