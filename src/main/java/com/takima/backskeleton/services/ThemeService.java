package com.takima.backskeleton.services;

import com.takima.backskeleton.DAO.ThemeDAO;
import com.takima.backskeleton.DTO.ThemeDTO;
import com.takima.backskeleton.DTO.ThemeMapper;
import com.takima.backskeleton.models.Theme;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ThemeService {

    @Autowired
    private ThemeDAO themeDAO;

    public ThemeDTO createTheme(ThemeDTO themeDTO) {
        Theme theme = ThemeMapper.fromDto(themeDTO);
        Theme savedTheme = themeDAO.save(theme);
        return ThemeMapper.toDto(savedTheme);
    }

    public Optional<ThemeDTO> getThemeById(Long themeId) {
        Optional<Theme> theme = themeDAO.findById(themeId);
        return theme.map(ThemeMapper::toDto);
    }

    public List<ThemeDTO> getAllThemes() {
        List<Theme> themes = themeDAO.findAll();
        return themes.stream()
                .map(ThemeMapper::toDto)
                .collect(Collectors.toList());
    }

    public boolean updateTheme(Long themeId, ThemeDTO themeDTO) {
        if (!themeDAO.existsById(themeId)) {
            return false;
        }
        Theme theme = ThemeMapper.fromDto(themeDTO);
        theme.setId(themeId);
        themeDAO.save(theme);
        return true;
    }

    public void deleteThemeById(Long themeId) {
        themeDAO.deleteById(themeId);
    }
}
