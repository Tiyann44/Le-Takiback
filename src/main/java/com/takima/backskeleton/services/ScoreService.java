package com.takima.backskeleton.services;

import com.takima.backskeleton.DAO.ScoreDAO;
import com.takima.backskeleton.DAO.QuizDAO;
import com.takima.backskeleton.DAO.UserDAO;
import com.takima.backskeleton.DTO.ScoreDTO;
import com.takima.backskeleton.DTO.ScoreMapper;
import com.takima.backskeleton.models.Quiz;
import com.takima.backskeleton.models.Score;
import com.takima.backskeleton.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ScoreService {

    @Autowired
    private ScoreDAO scoreDAO;

    @Autowired
    private QuizDAO quizDAO;

    @Autowired
    private UserDAO userDAO;

    public ScoreDTO createScore(ScoreDTO scoreDTO) {
        Quiz quiz = quizDAO.findById(scoreDTO.getQuizId())
                .orElseThrow(() -> new RuntimeException("Quiz not found"));
        User user = userDAO.findById(scoreDTO.getUserId())
                .orElseThrow(() -> new RuntimeException("User not found"));
        Score score = ScoreMapper.fromDto(scoreDTO, quiz, user);
        Score savedScore = scoreDAO.save(score);
        return ScoreMapper.toDto(savedScore);
    }

    public Optional<ScoreDTO> getScoreById(Long scoreId) {
        Optional<Score> score = scoreDAO.findById(scoreId);
        return score.map(ScoreMapper::toDto);
    }

    public List<ScoreDTO> getAllScores() {
        List<Score> scores = scoreDAO.findAll();
        return scores.stream()
                .map(ScoreMapper::toDto)
                .collect(Collectors.toList());
    }

    public boolean updateScore(Long scoreId, ScoreDTO scoreDTO) {
        if (!scoreDAO.existsById(scoreId)) {
            return false;
        }
        Quiz quiz = quizDAO.findById(scoreDTO.getQuizId())
                .orElseThrow(() -> new RuntimeException("Quiz not found"));
        User user = userDAO.findById(scoreDTO.getUserId())
                .orElseThrow(() -> new RuntimeException("User not found"));
        Score score = ScoreMapper.fromDto(scoreDTO, quiz, user);
        score.setId(scoreId);
        scoreDAO.save(score);
        return true;
    }

    public void deleteScoreById(Long scoreId) {
        scoreDAO.deleteById(scoreId);
    }
}
