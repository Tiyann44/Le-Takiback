package com.takima.backskeleton.DTO;


import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class AnswerDTO {
    private Long id;
    private Long questionId;
    private Long choiceId;
    private Boolean isCorrect;
}
