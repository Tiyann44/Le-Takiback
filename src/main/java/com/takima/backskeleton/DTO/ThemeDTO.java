package com.takima.backskeleton.DTO;

import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class ThemeDTO {
    private Long id;
    private String name;
    private String description;
    private String image;
}
