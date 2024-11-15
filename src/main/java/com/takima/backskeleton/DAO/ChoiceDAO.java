package com.takima.backskeleton.DAO;

import com.takima.backskeleton.models.Choice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ChoiceDAO extends JpaRepository<Choice, Long> {

}
