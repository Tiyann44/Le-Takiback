package com.takima.backskeleton.controllers;

import com.takima.backskeleton.DTO.QuestionDTO;
import com.takima.backskeleton.services.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/questions")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @PostMapping
    public ResponseEntity<QuestionDTO> createQuestion(@RequestBody QuestionDTO questionDTO) {
        QuestionDTO createdQuestion = questionService.createQuestion(questionDTO);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdQuestion);
    }

    @GetMapping("/{questionId}")
    public ResponseEntity<QuestionDTO> getQuestionById(@PathVariable Long questionId) {
        return questionService.getQuestionById(questionId)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping
    public List<QuestionDTO> getAllQuestions() {
        return questionService.getAllQuestions();
    }

    @PutMapping("/{questionId}")
    public ResponseEntity<Void> updateQuestion(@PathVariable Long questionId, @RequestBody QuestionDTO questionDTO) {
        boolean updated = questionService.updateQuestion(questionId, questionDTO);
        return updated ? ResponseEntity.ok().build() : ResponseEntity.notFound().build();
    }

    @DeleteMapping("/{questionId}")
    public ResponseEntity<Void> deleteQuestion(@PathVariable Long questionId) {
        questionService.deleteQuestionById(questionId);
        return ResponseEntity.noContent().build();
    }
}
