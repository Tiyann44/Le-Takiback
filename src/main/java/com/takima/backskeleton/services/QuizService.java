package com.takima.backskeleton.services;

import com.takima.backskeleton.DAO.QuizDAO;
import com.takima.backskeleton.DAO.ThemeDAO;
import com.takima.backskeleton.DTO.QuizDTO;
import com.takima.backskeleton.DTO.QuizMapper;
import com.takima.backskeleton.models.Quiz;
import com.takima.backskeleton.models.Theme;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class QuizService {

    @Autowired
    private QuizDAO quizDAO;

    @Autowired
    private ThemeDAO themeDAO;

    public QuizDTO createQuiz(QuizDTO quizDTO) {
        Theme theme = themeDAO.findById(quizDTO.getThemeId())
                .orElseThrow(() -> new RuntimeException("Theme not found"));
        Quiz quiz = QuizMapper.fromDto(quizDTO, theme);
        Quiz savedQuiz = quizDAO.save(quiz);
        return QuizMapper.toDto(savedQuiz);
    }

    public Optional<QuizDTO> getQuizById(Long quizId) {
        Optional<Quiz> quiz = quizDAO.findById(quizId);
        return quiz.map(QuizMapper::toDto);
    }

    public List<QuizDTO> getAllQuizzes() {
        List<Quiz> quizzes = quizDAO.findAll();
        return quizzes.stream()
                .map(QuizMapper::toDto)
                .collect(Collectors.toList());
    }

    public boolean updateQuiz(Long quizId, QuizDTO quizDTO) {
        if (!quizDAO.existsById(quizId)) {
            return false;
        }
        Theme theme = themeDAO.findById(quizDTO.getThemeId())
                .orElseThrow(() -> new RuntimeException("Theme not found"));
        Quiz quiz = QuizMapper.fromDto(quizDTO, theme);
        quiz.setId(quizId);
        quizDAO.save(quiz);
        return true;
    }

    public void deleteQuizById(Long quizId) {
        quizDAO.deleteById(quizId);
    }
}
