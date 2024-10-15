package com.takima.backskeleton.DTO;


import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Builder
@Getter
@Setter
public class UserDTO {
    private Long id;
    private String firstName;
    private String lastName;
    private String pseudo;
    private String mail;
    private String image;
    private Boolean isAdmin;
}

