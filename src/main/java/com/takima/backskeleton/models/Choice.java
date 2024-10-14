package com.takima.backskeleton.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@Table(name = "choice")
@NoArgsConstructor
@Getter
@Setter
public class Choice {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String option;  // Le texte du choix

    @OneToMany(mappedBy = "choice")
    private List<Answer> answers;  // Relation un choix -> plusieurs réponses
}
