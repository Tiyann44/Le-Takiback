package com.takima.backskeleton.services;

import com.takima.backskeleton.DAO.AnswerDAO;
import com.takima.backskeleton.DAO.QuestionDAO;
import com.takima.backskeleton.DAO.QuizDAO;
import com.takima.backskeleton.DTO.AnswerDTO;
import com.takima.backskeleton.DTO.QuestionDTO;
import com.takima.backskeleton.DTO.QuestionMapper;
import com.takima.backskeleton.models.Answer;
import com.takima.backskeleton.models.Question;
import com.takima.backskeleton.models.Quiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class QuestionService {

    @Autowired
    private QuestionDAO questionDAO;

    @Autowired
    private QuizDAO quizDAO;

    @Autowired
    private AnswerDAO answerDAO;

    public QuestionDTO createQuestion(QuestionDTO questionDTO) {
        Quiz quiz = quizDAO.findById(questionDTO.getQuizId())
                .orElseThrow(() -> new RuntimeException("Quiz not found"));
        Question question = QuestionMapper.fromDto(questionDTO, quiz);
        Question savedQuestion = questionDAO.save(question);
        return QuestionMapper.toDto(savedQuestion);
    }

    public Optional<QuestionDTO> getQuestionById(Long questionId) {
        Optional<Question> question = questionDAO.findById(questionId);
        return question.map(QuestionMapper::toDto);
    }

    public List<QuestionDTO> getAllQuestions() {
        List<Question> questions = questionDAO.findAll();
        return questions.stream()
                .map(QuestionMapper::toDto)
                .collect(Collectors.toList());
    }

    public boolean updateQuestion(Long questionId, QuestionDTO questionDTO) {
        if (!questionDAO.existsById(questionId)) {
            return false;
        }
        Quiz quiz = quizDAO.findById(questionDTO.getQuizId())
                .orElseThrow(() -> new RuntimeException("Quiz not found"));
        Question question = QuestionMapper.fromDto(questionDTO, quiz);
        question.setId(questionId);
        questionDAO.save(question);
        return true;
    }

    public void deleteQuestionById(Long questionId) {
        questionDAO.deleteById(questionId);
    }

}
