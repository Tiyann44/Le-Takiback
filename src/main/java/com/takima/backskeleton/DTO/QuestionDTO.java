package com.takima.backskeleton.DTO;

import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class QuestionDTO {
    private Long id;
    private Long quizId;
    private String quizName;
    private String question;
    private String image;
}
