package com.takima.backskeleton.controllers;

import com.takima.backskeleton.DTO.ScoreDTO;
import com.takima.backskeleton.services.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/scores")
public class ScoreController {

    @Autowired
    private ScoreService scoreService;

    @PostMapping
    public ResponseEntity<ScoreDTO> createScore(@RequestBody ScoreDTO scoreDTO) {
        ScoreDTO createdScore = scoreService.createScore(scoreDTO);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdScore);
    }

    @GetMapping("/{scoreId}")
    public ResponseEntity<ScoreDTO> getScoreById(@PathVariable Long scoreId) {
        return scoreService.getScoreById(scoreId)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping
    public List<ScoreDTO> getAllScores() {
        return scoreService.getAllScores();
    }

    @PutMapping("/{scoreId}")
    public ResponseEntity<Void> updateScore(@PathVariable Long scoreId, @RequestBody ScoreDTO scoreDTO) {
        boolean updated = scoreService.updateScore(scoreId, scoreDTO);
        return updated ? ResponseEntity.ok().build() : ResponseEntity.notFound().build();
    }

    @DeleteMapping("/{scoreId}")
    public ResponseEntity<Void> deleteScore(@PathVariable Long scoreId) {
        scoreService.deleteScoreById(scoreId);
        return ResponseEntity.noContent().build();
    }
}
