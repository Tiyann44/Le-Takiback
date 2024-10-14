package com.takima.backskeleton.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "answer")
@NoArgsConstructor
@Getter
public class Answer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "question_id", nullable = false)
    private Question question;  // Relation plusieurs réponses -> une question

    @ManyToOne
    @JoinColumn(name = "choice_id", nullable = false)
    private Choice choice;  // Relation plusieurs réponses -> un choix

    private Boolean isCorrect;  // Indique si la réponse est correcte ou non
}
