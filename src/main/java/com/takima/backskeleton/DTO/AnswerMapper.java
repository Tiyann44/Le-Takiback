package com.takima.backskeleton.DTO;

import com.takima.backskeleton.models.Answer;
import com.takima.backskeleton.models.Choice;
import com.takima.backskeleton.models.Question;

public class AnswerMapper {

    public static Answer fromDto (AnswerDTO answerDTO, Question question, Choice choice){
        Answer answer = new Answer();
        answer.setId(answerDTO.getId());
        answer.setQuestion(question);
        answer.setChoice(choice);
        answer.setIscorrect(answerDTO.getIsCorrect());
        return answer;
    }

    public static AnswerDTO toDto (Answer answer){
        return new AnswerDTO(
                answer.getId(),
                answer.getQuestion().getId(),
                answer.getChoice().getId(),
                answer.getIscorrect()
        );
    }
}
