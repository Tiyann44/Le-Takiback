package com.takima.backskeleton.DAO;

import com.takima.backskeleton.models.Answer;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AnswerDAO extends JpaRepository<Answer, Long> {
    List<Answer> findAnswerByQuestionIdAndIscorrect(long id, boolean iscorrect);
    List<Answer> findAnswersByQuestionId(long id);
}