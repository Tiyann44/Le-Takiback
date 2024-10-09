package com.takima.backskeleton.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "quizzes")
@NoArgsConstructor
@Getter
public class Quiz {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String description;

    @ManyToOne
    @JoinColumn(name = "theme_id", nullable = false)
    private Theme theme;  // Relation plusieurs quiz -> un thème

    @OneToMany(mappedBy = "quiz")
    private List<Question> questions;  // Relation un quiz -> plusieurs questions
}
