package com.takima.backskeleton.controllers;

import com.takima.backskeleton.DTO.ChoiceDTO;
import com.takima.backskeleton.services.ChoiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/choices")
public class ChoiceController {

    @Autowired
    private ChoiceService choiceService;

    @PostMapping
    public ResponseEntity<ChoiceDTO> createChoice(@RequestBody ChoiceDTO choiceDTO) {
        ChoiceDTO createdChoice = choiceService.createChoice(choiceDTO);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdChoice);
    }

    @GetMapping("/{choiceId}")
    public ResponseEntity<ChoiceDTO> getChoiceById(@PathVariable Long choiceId) {
        return choiceService.getChoiceById(choiceId)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping
    public List<ChoiceDTO> getAllChoices() {
        return choiceService.getAllChoices();
    }

    @PutMapping("/{choiceId}")
    public ResponseEntity<Void> updateChoice(@PathVariable Long choiceId, @RequestBody ChoiceDTO choiceDTO) {
        boolean updated = choiceService.updateChoice(choiceId, choiceDTO);
        return updated ? ResponseEntity.ok().build() : ResponseEntity.notFound().build();
    }

    @DeleteMapping("/{choiceId}")
    public ResponseEntity<Void> deleteChoice(@PathVariable Long choiceId) {
        choiceService.deleteChoiceById(choiceId);
        return ResponseEntity.noContent().build();
    }
}
