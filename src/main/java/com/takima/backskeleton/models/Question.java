package com.takima.backskeleton.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@Table(name = "question")
@NoArgsConstructor
@Getter
@Setter
public class Question {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String question;  // Le texte de la question

    @ManyToOne
    @JoinColumn(name = "quizId", nullable = false)
    private Quiz quiz;  // Relation plusieurs questions -> un quiz

    @OneToMany(mappedBy = "question")
    private List<Answer> answers;  // Relation une question -> plusieurs réponses

}
