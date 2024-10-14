package com.takima.backskeleton.DAO;

import com.takima.backskeleton.models.User;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserDAO extends JpaRepository<User, Long> {

    User findByEmail(String email);
    User deleteUserByEmail(String email);

    @Modifying
    @Transactional
    @Query("UPDATE User u SET u.firstName = ?2 WHERE u.id = ?1")
    int updateFirstNameById(long id, String firstName);

    @Modifying
    @Transactional
    @Query("UPDATE User u SET u.lastName = ?2 WHERE u.id = ?1")
    int updateLastNameById(long id, String LastName);

    @Modifying
    @Transactional
    @Query("UPDATE User u SET u.email = ?2 WHERE u.id = ?1")
    int updateEmailById(long id, String email);

    @Modifying
    @Transactional
    @Query("UPDATE User u SET u.isAdmin = ?2 WHERE u.id = ?1")
    int updateIsAdminById(long id,Boolean isAdmin);
}