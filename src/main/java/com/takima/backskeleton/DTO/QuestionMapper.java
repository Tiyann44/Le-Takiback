package com.takima.backskeleton.DTO;

import com.takima.backskeleton.models.Question;
import com.takima.backskeleton.models.Quiz;

public class QuestionMapper {
    public static Question fromDto (QuestionDTO questionDTO, Quiz quiz){
        Question question = new Question();
        question.setId(questionDTO.getId());
        question.setQuiz(quiz);
        question.setQuestion(questionDTO.getQuestion());
        return question;
    }

    public static QuestionDTO toDto (Question question){
        return new QuestionDTO(
                question.getId(),
                question.getQuiz().getId(),
                question.getQuiz().getName(),
                question.getQuestion()
        );
    }
}
