package com.takima.backskeleton.DTO;

import com.takima.backskeleton.models.Quiz;
import com.takima.backskeleton.models.Score;
import com.takima.backskeleton.models.User;

public class ScoreMapper {

    public static Score fromDto (ScoreDTO scoreDTO, Quiz quiz, User user){
        Score score = new Score();
        score.setId(scoreDTO.getId());
        score.setQuiz(quiz);
        score.setUser(user);
        score.setScore(scoreDTO.getScore());
        score.setMessage(scoreDTO.getMessage());
        return score;
    }

    public static ScoreDTO toDto (Score score){
        return new ScoreDTO(
                score.getId(),
                score.getQuiz().getId(),
                score.getUser().getId(),
                score.getScore(),
                score.getMessage()
        );
    }
}
