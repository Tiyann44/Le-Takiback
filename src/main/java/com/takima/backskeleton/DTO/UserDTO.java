package com.takima.backskeleton.DTO;


import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class UserDTO {
    private Long id;
    private String firstName;
    private String lastName;
    private String mail;
    private Boolean isAdmin;
}
