package com.takima.backskeleton.controllers;

import com.takima.backskeleton.DTO.StudentDto;
import com.takima.backskeleton.models.User;
import com.takima.backskeleton.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RequestMapping("users")
@RestController
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;


}
