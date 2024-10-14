package com.takima.backskeleton.DTO;

import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class ScoreDTO {
    private Long id;
    private Long quizId;
    private Long userId;
    private int score;
    private String message;
}
