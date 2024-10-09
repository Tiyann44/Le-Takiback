package com.takima.backskeleton.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "questions")
@NoArgsConstructor
@Getter
public class Question {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String question;  // Le texte de la question

    @ManyToOne
    @JoinColumn(name = "quiz_id", nullable = false)
    private Quiz quiz;  // Relation plusieurs questions -> un quiz

    @OneToMany(mappedBy = "question")
    private List<Answer> answers;  // Relation une question -> plusieurs réponses
}
