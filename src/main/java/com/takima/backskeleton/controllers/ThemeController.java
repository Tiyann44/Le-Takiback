package com.takima.backskeleton.controllers;

import com.takima.backskeleton.DTO.ThemeDTO;
import com.takima.backskeleton.services.ThemeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/themes")
public class ThemeController {

    @Autowired
    private ThemeService themeService;

    @PostMapping
    public ResponseEntity<ThemeDTO> createTheme(@RequestBody ThemeDTO themeDTO) {
        ThemeDTO createdTheme = themeService.createTheme(themeDTO);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdTheme);
    }

    @GetMapping("/{themeId}")
    public ResponseEntity<ThemeDTO> getThemeById(@PathVariable Long themeId) {
        return themeService.getThemeById(themeId)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping
    public List<ThemeDTO> getAllThemes() {
        return themeService.getAllThemes();
    }

    @PutMapping("/{themeId}")
    public ResponseEntity<Void> updateTheme(@PathVariable Long themeId, @RequestBody ThemeDTO themeDTO) {
        boolean updated = themeService.updateTheme(themeId, themeDTO);
        return updated ? ResponseEntity.ok().build() : ResponseEntity.notFound().build();
    }

    @DeleteMapping("/{themeId}")
    public ResponseEntity<Void> deleteTheme(@PathVariable Long themeId) {
        themeService.deleteThemeById(themeId);
        return ResponseEntity.noContent().build();
    }
}
