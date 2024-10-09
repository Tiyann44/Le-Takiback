package com.takima.backskeleton.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "users")
@NoArgsConstructor
@Getter
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String firstName;
    private String lastName;
    private String email;
    private Boolean isAdmin;

    @OneToMany(mappedBy = "user")
    private List<Score> scores;  // Relation un utilisateur -> plusieurs scores
}
