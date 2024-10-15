package com.takima.backskeleton.services;

import com.takima.backskeleton.DAO.AnswerDAO;
import com.takima.backskeleton.DAO.ChoiceDAO;
import com.takima.backskeleton.DAO.QuestionDAO;
import com.takima.backskeleton.DTO.AnswerDTO;
import com.takima.backskeleton.DTO.AnswerMapper;
import com.takima.backskeleton.models.Answer;
import com.takima.backskeleton.models.Choice;
import com.takima.backskeleton.models.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AnswerService {

    @Autowired
    private AnswerDAO answerDAO;

    @Autowired
    private QuestionDAO questionDAO;

    @Autowired
    private ChoiceDAO choiceDAO;

    public Answer updateIsCorrectById(Long answerId, Boolean isCorrect) {
        Answer answer = answerDAO.findById(answerId).orElseThrow(() -> new RuntimeException("Pas de réponse avec l'id " + String.valueOf(answerId)));
        answer.setIscorrect(isCorrect);
        answerDAO.save(answer);
        return answer;
    }

    public List<Answer> findAnswerByQuestionIdAndIsCorrect(Long questionId, Boolean isCorrect) {
        return answerDAO.findAnswerByQuestionIdAndIscorrect(questionId, isCorrect);
    }

    public List<Answer> findAnswersByQuestionId(Long questionId) {
        return answerDAO.findAnswersByQuestionId(questionId);
    }

    public AnswerDTO createAnswer(AnswerDTO answerDTO) {
        Question question = questionDAO.findById(answerDTO.getQuestionId())
                .orElseThrow(() -> new RuntimeException("Question not found"));
        Choice choice = choiceDAO.findById(answerDTO.getChoiceId())
                .orElseThrow(() -> new RuntimeException("Choice not found"));

        Answer answer = AnswerMapper.fromDto(answerDTO, question, choice);
        Answer savedAnswer = answerDAO.save(answer);
        return AnswerMapper.toDto(savedAnswer);
    }

    public Optional<AnswerDTO> getAnswerById(Long answerId) {
        Optional<Answer> answer = answerDAO.findById(answerId);
        return answer.map(AnswerMapper::toDto);
    }

    public void deleteAnswerById(Long answerId) {
        answerDAO.deleteById(answerId);
    }

    public boolean updateAnswer(Long answerId, AnswerDTO answerDTO) {
        Optional<Answer> answer = answerDAO.findById(answerId);
        if (answer.isEmpty()) {
            return false;
        }

        Question question = questionDAO.findById(answerDTO.getQuestionId())
                .orElseThrow(() -> new RuntimeException("Question not found"));
        Choice choice = choiceDAO.findById(answerDTO.getChoiceId())
                .orElseThrow(() -> new RuntimeException("Choice not found"));

        Answer updatedAnswer = AnswerMapper.fromDto(answerDTO, question, choice);
        updatedAnswer.setId(answerId);
        answerDAO.save(updatedAnswer);
        return true;
    }
}
