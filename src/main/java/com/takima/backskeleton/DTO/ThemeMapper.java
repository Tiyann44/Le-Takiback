package com.takima.backskeleton.DTO;

import com.takima.backskeleton.models.Theme;

public class ThemeMapper {

    public static Theme fromDto (ThemeDTO themeDTO){
        Theme theme = new Theme();
        theme.setId(themeDTO.getId());
        theme.setName(themeDTO.getName());
        theme.setDescription(themeDTO.getDescription());
        return theme;
    }

    public static ThemeDTO toDto (Theme theme){
        return new ThemeDTO(
                theme.getId(),
                theme.getName(),
                theme.getDescription()
        );
    }
}
