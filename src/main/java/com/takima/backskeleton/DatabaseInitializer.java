package com.takima.backskeleton;

import org.springframework.boot.CommandLineRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class DatabaseInitializer implements CommandLineRunner {

    @Autowired
    private JdbcTemplate jdbcTemplate;  // Injection de JdbcTemplate pour exécuter des requêtes SQL

    @Override
    public void run(String... args) throws Exception {
        // Requête SQL pour mettre à jour la séquence 'theme_id_seq' avec le maximum ID + 1
        String sql = "SELECT setval('theme_id_seq', (SELECT MAX(id) FROM theme) + 1)";
        String sql1 = "SELECT setval('users_id_seq', (SELECT MAX(id) FROM users) + 1)";
        String sql2 = "SELECT setval('score_id_seq', (SELECT MAX(id) FROM score) + 1)";
        String sql3 = "SELECT setval('quiz_id_seq', (SELECT MAX(id) FROM quiz) + 1)";
        String sql4 = "SELECT setval('question_id_seq', (SELECT MAX(id) FROM question) + 1)";
        String sql5= "SELECT setval('choice_id_seq', (SELECT MAX(id) FROM choice) + 1)";
        String sql6 = "SELECT setval('answer_id_seq', (SELECT MAX(id) FROM answer) + 1)";


        try {
            jdbcTemplate.execute(sql);  // Exécution de la requête SQL
            System.out.println("La séquence 'theme_id_seq' a été mise à jour avec succès.");
            jdbcTemplate.execute(sql1);  // Exécution de la requête SQL
            System.out.println("La séquence 'users_id_seq' a été mise à jour avec succès.");
            jdbcTemplate.execute(sql2);  // Exécution de la requête SQL
            System.out.println("La séquence 'score_id_seq' a été mise à jour avec succès.");
            jdbcTemplate.execute(sql3);  // Exécution de la requête SQL
            System.out.println("La séquence 'quiz_id_seq' a été mise à jour avec succès.");
            jdbcTemplate.execute(sql4);  // Exécution de la requête SQL
            System.out.println("La séquence 'question_id_seq' a été mise à jour avec succès.");
            jdbcTemplate.execute(sql5);  // Exécution de la requête SQL
            System.out.println("La séquence 'choice_id_seq' a été mise à jour avec succès.");
            jdbcTemplate.execute(sql6);  // Exécution de la requête SQL
            System.out.println("La séquence 'answer_id_seq' a été mise à jour avec succès.");
        } catch (Exception e) {
            System.err.println("Erreur lors de la mise à jour de la séquence : " + e.getMessage());
        }
    }
}

