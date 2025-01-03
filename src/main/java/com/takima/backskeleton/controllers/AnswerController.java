package com.takima.backskeleton.controllers;

import com.takima.backskeleton.DTO.AnswerDTO;
import com.takima.backskeleton.DTO.QuestionDTO;
import com.takima.backskeleton.services.AnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/api/answers")
public class AnswerController {

    @Autowired
    private AnswerService answerService;

    @PostMapping
    public ResponseEntity<AnswerDTO> createAnswer(@RequestBody AnswerDTO answerDTO) {
        AnswerDTO createdAnswer = answerService.createAnswer(answerDTO);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdAnswer);
    }

    @GetMapping("/{answerId}")
    public ResponseEntity<AnswerDTO> getAnswerById(@PathVariable Long answerId) {
        return answerService.getAnswerById(answerId)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }
    @GetMapping
    public List<AnswerDTO> getAllQuestions() {
        return answerService.getAllAnswers();
    }

    @PutMapping("/{answerId}")
    public ResponseEntity<Void> updateAnswer(@PathVariable Long answerId, @RequestBody AnswerDTO answerDTO) {
        boolean updated = answerService.updateAnswer(answerId, answerDTO);
        return updated ? ResponseEntity.ok().build() : ResponseEntity.notFound().build();
    }

    @DeleteMapping("/{answerId}")
    public ResponseEntity<Void> deleteAnswer(@PathVariable Long answerId) {
        answerService.deleteAnswerById(answerId);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/question/{questionId}")
    public ResponseEntity<List<AnswerDTO>> getAnswersByQuestionId(@PathVariable Long questionId) {
        return ResponseEntity.ok(answerService.getAnswersByQuestionId(questionId));
    }
}
