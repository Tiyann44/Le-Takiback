package com.takima.backskeleton.DTO;

import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class ChoiceDTO {
    private Long id;
    private String option;
}
