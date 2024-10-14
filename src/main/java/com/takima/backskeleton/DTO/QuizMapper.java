package com.takima.backskeleton.DTO;

import com.takima.backskeleton.models.Quiz;
import com.takima.backskeleton.models.Theme;

public class QuizMapper {

    public static Quiz fromDto (QuizDTO quizDTO, Theme theme){
        Quiz quiz = new Quiz();
        quiz.setId(quizDTO.getId());
        quiz.setTheme(theme);
        quiz.setName(quizDTO.getName());
        quiz.setDescription(quizDTO.getDescription());
        return quiz;
    }

    public static QuizDTO toDto (Quiz quiz){
        return new QuizDTO(
                quiz.getId(),
                quiz.getTheme().getId(),
                quiz.getName(),
                quiz.getDescription()
        );
    }
}
