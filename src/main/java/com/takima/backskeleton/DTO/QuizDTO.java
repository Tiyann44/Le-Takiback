package com.takima.backskeleton.DTO;

import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class QuizDTO {
    private Long id;
    private Long themeId;
    private String name;
    private String description;
}
