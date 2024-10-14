package com.takima.backskeleton.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "scores")
@NoArgsConstructor
@Getter
public class Score {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;  // Relation plusieurs scores -> un utilisateur

    @ManyToOne
    @JoinColumn(name = "quiz_id", nullable = false)
    private Quiz quiz;  // Relation plusieurs scores -> un quiz

    private Integer score;  // Le score obtenu
    private String message;  // Un message optionnel sur le score
}
